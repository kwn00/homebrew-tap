# kwn00/homebrew-tap

Homebrew tap for [kwn00](https://github.com/kwn00)'s tools.

```sh
brew install --cask kwn00/tap/agent-pulse
```

| Cask | What it is |
|---|---|
| [`agent-pulse`](Casks/agent-pulse.rb) | [Agent Pulse](https://github.com/kwn00/agent-pulse) — menu bar usage monitor for Antigravity, GitHub Copilot, Codex and Cursor |

The casks here are ad-hoc signed apps (no Apple Developer ID). Each cask clears the quarantine flag
after install so the app opens without the "unidentified developer" prompt. Prefer to keep the flag?
Install with `--no-quarantine` omitted *and* remove the `postflight` block in your own tap.

## Updating

`bump.yml` checks the latest GitHub release of each app every 6 hours (or on demand from the Actions
tab) and rewrites `version` / `sha256` in the cask. No tokens beyond the repository's own are needed.
