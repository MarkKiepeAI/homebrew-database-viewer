# MoleDB

Homebrew cask for [MoleDB](https://moledb.com), a local-first desktop database GUI.

The cask installs `MoleDB.app` from the Apple Silicon disk image on GitHub Releases (`MoleDB-<version>-arm64.dmg`). It does not download the website `.pkg`.

## Install

```bash
brew install --cask markkiepe/moledb/moledb
```

That command taps `MarkKiepe/moledb` (GitHub repo `MarkKiepe/homebrew-moledb`) and installs the cask. You can also tap first:

```bash
brew tap MarkKiepe/moledb
brew install --cask moledb
```

This cask is Apple Silicon (`arm64`) only. An Intel (`x64`) disk image is not published yet, so `brew install` stops on Intel Macs.

## Existing installs

The cask token was renamed from `database-viewer` to `moledb`. Homebrew reads `cask_renames.json` during `brew update` / `brew upgrade` and migrates an existing `database-viewer` install to `moledb`.

The GitHub repository is being renamed from `homebrew-database-viewer` to `homebrew-moledb`. GitHub keeps a redirect from the old clone URL, so `brew update` still works if you already have `MarkKiepe/database-viewer` tapped. To use the new tap name:

```bash
brew untap MarkKiepe/database-viewer
brew tap MarkKiepe/moledb
```

## Upgrade

```bash
brew update
brew upgrade --cask moledb
```

A Developer ID build also checks GitHub Releases from inside the app.

## Uninstall

```bash
brew uninstall --cask moledb
```

To remove the app and its local data (saved connections under `~/Library/Application Support/MoleDB`, plus older `Database Viewer`, `database-viewer`, and `databae-viewer` folders):

```bash
brew uninstall --cask --zap moledb
```

## After a release

Tag the release on `MarkKiepe/database-viewer` first. From a checkout of this tap, pass that version:

```bash
bash scripts/bump-cask.sh 0.1.7
```

The script reads the sha256 digest of `MoleDB-<version>-arm64.dmg` from the GitHub release asset. If the digest is missing, it downloads that DMG and hashes it, then updates `Casks/moledb.rb`. Add `--print-only` to print the version and checksum without editing the cask.
