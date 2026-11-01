# homebrew-kaidoplan

Homebrew tap for [Kaido Plan](https://github.com/cygnusyang/Kaido), a project planning workbench for AI coding agents.

## Install

```bash
brew install --cask cygnusyang/kaidoplan/kaido
```

Or tap first:

```bash
brew tap cygnusyang/kaidoplan
brew install --cask kaido
```

## Upgrade

```bash
brew upgrade --cask kaido
```

## Uninstall

```bash
brew uninstall --cask kaido          # removes /Applications/Kaido.app only
brew uninstall --zap --cask kaido    # also clears preferences and OTA logs
```

Your `.kaido` project files live wherever you saved them and are never touched.

## Maintenance

`Casks/kaido.rb` pins the GitHub release version and DMG SHA-256. After a Kaido release, update both values from the release asset and run `brew audit --cask` and `brew style` before committing.
