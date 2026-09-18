# kwn00/homebrew-tap

Homebrew tap for [kwn00](https://github.com/kwn00)'s tools.

```sh
brew install --cask --no-quarantine kwn00/tap/agent-pulse
```

| Cask | What it is |
|---|---|
| [`agent-pulse`](Casks/agent-pulse.rb) | [Agent Pulse](https://github.com/kwn00/agent-pulse) — menu bar usage monitor for Antigravity, GitHub Copilot, Codex and Cursor |

The apps here are ad-hoc signed (no Apple Developer ID). Homebrew casks can no longer clear the
quarantine flag themselves (`postflight` shell steps are deprecated in Homebrew 7), so pass
`--no-quarantine` at install time; otherwise macOS will ask you to allow the app under
System Settings → Privacy & Security on first launch, or run
`xattr -dr com.apple.quarantine "/Applications/Agent Pulse.app"`.

## Updating

`bump.yml` checks the latest GitHub release of each app every 6 hours (or on demand from the Actions
tab) and rewrites `version` / `sha256` in the cask. No tokens beyond the repository's own are needed.
