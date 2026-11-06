# homebrew-kaidoplan

Homebrew tap for [KaidoPlan](https://ai.cygnusyang.top/kaidoplan/), a project planning
workbench for AI coding agents.

## Install

macOS app (UI):

```bash
brew install --cask cygnusyang/kaidoplan/kaidoplan
```

CLI + MCP server (for AI agents) — installs `kaidoplan` and `kaidoplan-mcp` onto your PATH:

```bash
brew install cygnusyang/kaidoplan/kaidoplan-cli
```

Recent Homebrew versions require an explicit trust step for third-party taps. If the
command above stops with *"Refusing to load cask … from untrusted tap"*, run this once
and repeat the install:

```bash
brew trust cygnusyang/kaidoplan
```

Or tap first:

```bash
brew tap cygnusyang/kaidoplan
brew install --cask kaidoplan
```

## Upgrade

```bash
brew upgrade --cask kaidoplan      # macOS app
brew upgrade kaidoplan-cli         # CLI + MCP server
```

## Uninstall

```bash
brew uninstall --cask kaidoplan          # removes /Applications/KaidoPlan.app only
brew uninstall --zap --cask kaidoplan    # also clears preferences and OTA logs
brew uninstall kaidoplan-cli             # removes the kaidoplan and kaidoplan-mcp commands
```

`--zap` leaves `~/Library/Application Support/KaidoPlan/` alone on purpose — that is
where your licence file lives, and wiping it would cost you the licence.

Your `.kaido` project files live wherever you saved them and are never touched.

## Coming from the pre-3.0 names

Until v3.0.0 this tap shipped a `kaido` cask and a `kaido-cli` formula. Both are gone:
v3.0.0 renamed the app to `KaidoPlan.app` **and changed its bundle id**, so Homebrew
cannot carry the old install forward. If you installed the old cask, remove it first and
then install again:

```bash
brew uninstall --cask kaido
brew install --cask cygnusyang/kaidoplan/kaidoplan
```

The old build cannot update itself to 3.0.0 either — its updater rejects a manifest for a
different app id by design. Uninstalling and reinstalling is the supported path.

## Maintenance

Two files pin the GitHub release version and SHA-256:

- `Casks/kaidoplan.rb` — the macOS app DMG (`KaidoPlan-vX.Y.Z.dmg`).
- `Formula/kaidoplan-cli.rb` — the CLI/MCP universal tarball (`kaidoplan-vX.Y.Z-macos-universal.tar.gz`).

After a KaidoPlan release, update both files' `version` and `sha256` from the release
assets, then run `brew audit` and `brew style` before committing:

```bash
brew audit --cask kaidoplan
brew audit --formula kaidoplan-cli
brew style
```
