# kwn00/homebrew-tap

Homebrew tap for [kwn00](https://github.com/kwn00)'s tools.

```sh
brew install --cask kwn00/tap/agent-pulse
```

| Cask | What it is |
|---|---|
| [`agent-pulse`](Casks/agent-pulse.rb) | [Agent Pulse](https://github.com/kwn00/agent-pulse) — menu bar usage monitor for Antigravity, GitHub Copilot, Codex and Cursor |

The apps here are ad-hoc signed (no Apple Developer ID), so macOS blocks the first launch: click
**Done**, then allow the app under **System Settings → Privacy & Security → Open Anyway**. Terminal
alternative: `xattr -dr com.apple.quarantine "/Applications/<App>.app"`.

## Updating

`bump.yml` checks the latest GitHub release of each app every 6 hours (or on demand from the Actions
tab) and rewrites `version` / `sha256` in the cask. No tokens beyond the repository's own are needed.

## License

[MIT](LICENSE) © 2026 kwn00
