#!/usr/bin/env python3
from __future__ import annotations

import hashlib
import json
import time
import sys
from pathlib import Path
from typing import Dict, List
from urllib.error import HTTPError, URLError
from urllib.request import urlopen

REQUIRED_KEYS = (
    "cask_token",
    "app_name",
    "desc",
    "homepage",
    "app_bundle",
    "latest_json_url",
    "asset_arm",
    "asset_intel",
)


def fail(message: str) -> None:
    print(message, file=sys.stderr)
    raise SystemExit(1)


def parse_yaml_value(raw: str) -> str:
    value = raw.strip()
    if (
        (value.startswith('"') and value.endswith('"'))
        or (value.startswith("'") and value.endswith("'"))
    ):
        return value[1:-1]
    return value


def parse_key_value(raw_line: str, path: Path) -> tuple[str, str]:
    if ":" not in raw_line:
        fail(f"Invalid YAML line in {path}: {raw_line}")
    key, value = raw_line.split(":", 1)
    return key.strip(), parse_yaml_value(value)


def parse_apps_yaml(path: Path) -> List[Dict[str, str]]:
    if not path.exists():
        fail(f"Missing config file: {path}")

    apps: List[Dict[str, str]] = []
    current: Dict[str, str] | None = None
    saw_apps_key = False

    for raw_line in path.read_text(encoding="utf-8").splitlines():
        line = raw_line.strip()
        if not line or line.startswith("#"):
            continue

        if line == "apps:":
            saw_apps_key = True
            continue

        if not saw_apps_key:
            fail(f"Expected top-level 'apps:' in {path}")

        if line.startswith("- "):
            if current is not None:
                apps.append(current)
            current = {}
            remainder = line[2:].strip()
            if remainder:
                key, value = parse_key_value(remainder, path)
                current[key] = value
            continue

        if current is None:
            fail(f"Invalid YAML structure in {path}: {line}")

        key, value = parse_key_value(line, path)
        current[key] = value

    if current is not None:
        apps.append(current)

    if not apps:
        fail(f"No app configs found in {path}")

    for app in apps:
        for key in REQUIRED_KEYS:
            if not app.get(key):
                fail(f"Missing {key} in {path}")

    return apps


def fetch_text(url: str) -> str:
    return fetch_bytes(url).decode("utf-8")


def fetch_bytes(url: str) -> bytes:
    last_err: Exception | None = None
    for attempt in range(1, 4):
        try:
            with urlopen(url) as response:  # nosec B310
                return response.read()
        except (HTTPError, URLError) as err:
            last_err = err
            if attempt < 3:
                time.sleep(1.5 * attempt)
    fail(f"Failed to fetch {url}: {last_err}")


def sha256_hex(payload: bytes) -> str:
    return hashlib.sha256(payload).hexdigest()


def ensure_asset_url(url: str, asset_name: str) -> str:
    return f"{url}{asset_name}" if url.endswith("/") else url


def render_cask(config: Dict[str, str], version: str, arm_url: str, intel_url: str, arm_sha: str, intel_sha: str) -> str:
    return f"""cask "{config["cask_token"]}" do
  version "{version}"
  sha256 arm:   "{arm_sha}",
         intel: "{intel_sha}"

  on_arm do
    url "{arm_url}"
  end
  on_intel do
    url "{intel_url}"
  end

  name "{config["app_name"]}"
  desc "{config["desc"]}"
  homepage "{config["homepage"]}"

  auto_updates true

  livecheck do
    url "{config["latest_json_url"]}"
    regex(/"version"\\s*:\\s*"([^"]+)"/i)
  end

  app "{config["app_bundle"]}"
end
"""


def main() -> None:
    if len(sys.argv) > 2:
        fail("Usage: scripts/generate_homebrew_casks.py [app_token]")
    only_token = sys.argv[1] if len(sys.argv) == 2 else ""

    script_dir = Path(__file__).resolve().parent
    repo_root = script_dir.parent
    apps_yaml = script_dir / "apps.yml"
    casks_dir = repo_root / "Casks"
    casks_dir.mkdir(parents=True, exist_ok=True)

    app_configs = parse_apps_yaml(apps_yaml)

    generated = 0
    for config in app_configs:
        token = config["cask_token"]
        if only_token and token != only_token:
            continue

        latest_raw = fetch_text(config["latest_json_url"])
        try:
            latest = json.loads(latest_raw)
        except json.JSONDecodeError:
            fail(f"Invalid JSON in {config['latest_json_url']}")

        version = latest.get("version")
        if not version:
            fail(f"Missing version in {config['latest_json_url']}")

        platforms = latest.get("platforms", {})
        arm_url_raw = (platforms.get("darwin-aarch64") or {}).get("url")
        intel_url_raw = (platforms.get("darwin-x86_64") or {}).get("url")
        if not arm_url_raw:
            fail(f"Missing darwin-aarch64.url in {config['latest_json_url']}")
        if not intel_url_raw:
            fail(f"Missing darwin-x86_64.url in {config['latest_json_url']}")

        arm_url = ensure_asset_url(arm_url_raw, config["asset_arm"])
        intel_url = ensure_asset_url(intel_url_raw, config["asset_intel"])

        print(f"Downloading {token} assets for version {version}...")
        arm_payload = fetch_bytes(arm_url)
        intel_payload = fetch_bytes(intel_url)

        arm_sha = sha256_hex(arm_payload)
        intel_sha = sha256_hex(intel_payload)

        cask_path = casks_dir / f"{config['cask_token']}.rb"
        cask_path.write_text(
            render_cask(config, version, arm_url, intel_url, arm_sha, intel_sha),
            encoding="utf-8",
        )
        print(f"Wrote {cask_path}")
        generated += 1

    if generated == 0:
        if only_token:
            fail(f"No app config found for token: {only_token}")
        fail(f"No app configs found in {apps_yaml}")

    print(f"Generated {generated} cask file(s).")


if __name__ == "__main__":
    main()
