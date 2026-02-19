#!/usr/bin/env python3
from __future__ import annotations

import subprocess
import sys
from pathlib import Path


def main() -> None:
    if len(sys.argv) > 2:
        print("Usage: scripts/generate_homebrew_cask.py [app_token]", file=sys.stderr)
        raise SystemExit(1)

    target = Path(__file__).resolve().parent / "generate_homebrew_casks.py"
    args = [sys.executable, str(target)]
    if len(sys.argv) == 2:
        args.append(sys.argv[1])

    result = subprocess.run(args, check=False)
    raise SystemExit(result.returncode)


if __name__ == "__main__":
    main()
