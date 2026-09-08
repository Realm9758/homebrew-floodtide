# Floodtide Homebrew tap

[Floodtide](https://bhopstudio.com/floodtide) finds and installs updates for every app on your Mac.

```sh
brew install --cask realm9758/floodtide/floodtide
```

That taps this repository and installs the current release. The app updates itself afterwards, so `brew upgrade` is not needed.

To remove it:

```sh
brew uninstall --cask floodtide          # the app, its helper and the login item
brew uninstall --cask --zap floodtide    # also settings, history and backups
```

Floodtide is a 14-day trial that becomes the full version with a licence key from bhopstudio.com/floodtide/buy. The same download is both.
