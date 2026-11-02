# homebrew-kaidoplan

Homebrew tap for [Kaido Plan](https://github.com/cygnusyang/Kaido), a project planning workbench for AI coding agents.

## Install

macOS app (UI):

```bash
brew install --cask cygnusyang/kaidoplan/kaido
```

CLI + MCP server (for AI agents) — installs `kaido` and `kaido-mcp` onto your PATH:

```bash
brew install cygnusyang/kaidoplan/kaido-cli
```

Recent Homebrew versions require an explicit trust step for third-party taps. If the command above stops with *"Refusing to load cask … from untrusted tap"*, run this once and repeat the install:

```bash
brew trust cygnusyang/kaidoplan
```

Or tap first:

```bash
brew tap cygnusyang/kaidoplan
brew install --cask kaido
```

## Upgrade

```bash
brew upgrade --cask kaido            # macOS app
brew upgrade kaido-cli               # CLI + MCP server
```

## Uninstall

```bash
brew uninstall --cask kaido          # removes /Applications/Kaido.app only
brew uninstall --zap --cask kaido    # also clears preferences and OTA logs
brew uninstall kaido-cli             # removes the kaido and kaido-mcp commands
```

Your `.kaido` project files live wherever you saved them and are never touched.

## Maintenance

Two files pin the GitHub release version and SHA-256:

- `Casks/kaido.rb` — the macOS app DMG (`Kaido-vX.Y.Z.dmg`).
- `Formula/kaido-cli.rb` — the CLI/MCP universal tarball (`kaido-vX.Y.Z-macos-universal.tar.gz`).

After a Kaido release, update both files' `version` and `sha256` from the release assets, then run `brew audit` and `brew style` before committing:

```bash
brew audit --cask kaido
brew audit --formula kaido-cli
brew style
```
