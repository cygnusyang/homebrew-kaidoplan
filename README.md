# homebrew-kaidoplan

Homebrew tap for [Kaido Plan](https://github.com/cygnusyang/Kaido), a project planning workbench for AI coding agents.

## Install

```bash
brew install --cask cygnusyang/kaidoplanplan/kaido
```

Or tap first:

```bash
brew tap cygnusyang/kaidoplan
brew install --cask kaido
```

## Maintenance

`Casks/kaido.rb` pins the GitHub release version and DMG SHA-256. After a Kaido release, update both values from the release asset and run `brew audit --cask` and `brew style` before committing.
