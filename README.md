# redblink Homebrew tap

A third-party Homebrew tap distributing the **redblink** macOS menu-bar meeting recorder and CLI. This is a binary-only distribution; the source repository remains private.

## Install

Requires macOS 15 or later:

```sh
brew install --cask benjamine/redblink/redblink
```

Homebrew installs `redblink.app` in `/Applications` and provides the `redblink` CLI. Examples:

```sh
redblink start   # launch the menu-bar app without recording
redblink rec     # start recording
redblink status
redblink stop
redblink quit    # finalize an active recording, then quit
```

## Experimental distribution notice

Releases are ad-hoc signed, not Apple Developer ID-signed, and not notarized. This is an experimental third-party cask, not an official Homebrew Cask release. macOS Gatekeeper may require manual approval on first launch. Only proceed if you trust the release; do not disable Gatekeeper or remove the download quarantine.

Approve **Microphone** and **Screen & System Audio Recording** when prompted. Because releases do not have a stable Apple signing identity, macOS may request these permissions again after an update. Recordings are saved under `~/Library/Application Support/RedBlink/Recordings` and are not removed when the cask is uninstalled.

The release archive is universal (`arm64` and `x86_64`) and includes the MIT license in the app bundle. See [LICENSE](LICENSE).
