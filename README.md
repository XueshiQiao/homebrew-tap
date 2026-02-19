# homebrew_tap

Homebrew tap for Joey's macOS apps.

## Install

```bash
brew tap XueshiQiao/homebrew-tap
```

Install one app:

```bash
brew install --cask pastepaw
brew install --cask hypercapslock
brew install --cask netstat-cat
```

Install all three:

```bash
brew install --cask pastepaw hypercapslock netstat-cat
```

## Generate Casks (Python)

Generate all casks from `scripts/apps.yml` + each app's `latest.json`:

```bash
./scripts/generate_homebrew_casks.py
```

Generate one cask only:

```bash
./scripts/generate_homebrew_cask.py pastepaw
```
