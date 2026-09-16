# homebrew-tap

Homebrew tap for Joey's macOS apps.

## Install

One-liner, no separate tap step:

```bash
brew install --cask XueshiQiao/tap/xtools
```

Or tap first, then install by short name:

```bash
brew tap XueshiQiao/tap
brew trust XueshiQiao/tap   # Homebrew 7.0+ only; older versions have no `trust` command
brew install --cask xtools
```

The `brew trust` line is what Homebrew 7.0 added: a cask from a third-party tap
will not load unless the tap is trusted, *or* the cask is named in full on the
command line. That is why the one-liner above works without it and the short
name does not.

## Apps

| Cask | App | What it does |
|---|---|---|
| `xtools` | [XTools](https://github.com/XueshiQiao/XTools) | Menu bar toolbox of small macOS system utilities, one per tab |
| `anydrag` | [AnyDrag](https://github.com/XueshiQiao/AnyDrag) | Move any window by holding a modifier key and dragging anywhere on it |
| `pastepaw` | [PastePaw](https://github.com/XueshiQiao/PastePaw) | Clipboard history manager |
| `ccswitcher` | [CCSwitcher](https://github.com/XueshiQiao/CCSwitcher) | Menu bar app to manage and switch between Claude Code accounts |
| `hypercapslock` | [HyperCapslock](https://github.com/XueshiQiao/HyperCapslock) | Caps Lock enhancement utility |
| `netstat-cat` | [Netstat Cat](https://github.com/XueshiQiao/netstat-cat) | GUI application for netstat |
| `notifier` | [Notifier](https://github.com/XueshiQiao/Notifier) | Never miss a prompt again |

Install several at once:

```bash
brew install --cask xtools anydrag pastepaw
```

## Generate Casks (Python)

Each cask is generated from `scripts/apps.yml` plus that app's `latest.json`
release asset — the script reads the version and the per-architecture download
URLs from `latest.json`, downloads the assets, and computes the sha256 itself.

Generate all casks:

```bash
./scripts/generate_homebrew_casks.py
```

Generate one cask only:

```bash
./scripts/generate_homebrew_casks.py xtools
```

Normally you don't run this by hand: each app's release workflow fires a
`repository_dispatch` at this repo and the `Update Casks` workflow regenerates
the cask and commits it. See [PIPELINE.md](PIPELINE.md).

To re-run it manually for one app:

```bash
gh workflow run update-casks.yml --repo XueshiQiao/homebrew_tap -f app_token=xtools
```
