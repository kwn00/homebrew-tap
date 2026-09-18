# kwn00/homebrew-tap

Homebrew tap for [kwn00](https://github.com/kwn00)'s tools.

```sh
brew install --cask kwn00/tap/agent-pulse
xattr -dr com.apple.quarantine "/Applications/Agent Pulse.app"   # ad-hoc signed: clear Gatekeeper quarantine once
```

| Cask | What it is |
|---|---|
| [`agent-pulse`](Casks/agent-pulse.rb) | [Agent Pulse](https://github.com/kwn00/agent-pulse) — menu bar usage monitor for Antigravity, GitHub Copilot, Codex and Cursor |

The apps here are ad-hoc signed (no Apple Developer ID). Homebrew 7 removed `--no-quarantine` and
deprecated shell `postflight` steps, so casks can no longer clear the quarantine flag for you. Run the
`xattr` line above once after installing (or allow the app under System Settings → Privacy & Security →
Open Anyway on first launch).

## Updating

`bump.yml` checks the latest GitHub release of each app every 6 hours (or on demand from the Actions
tab) and rewrites `version` / `sha256` in the cask. No tokens beyond the repository's own are needed.
