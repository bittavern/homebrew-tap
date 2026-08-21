# bittavern/homebrew-tap

Homebrew tap for Bittavern apps.

## Install

```bash
brew install bittavern/tap/arbitr
```

## Updating the cask

After each release (`make notarize && make dist && make upload` in `desktop/`),
update `Casks/arbitr.rb` with the new version and sha256 (printed by `make dist`):

```bash
shasum -a 256 build/Arbitr-X.Y.Z.zip
```

Then commit and push. Users get the new version via the app's built-in updater;
the cask is for fresh installs.
