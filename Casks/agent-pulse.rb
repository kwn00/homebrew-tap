cask "agent-pulse" do
  version "1.0.0"
  sha256 "2332383cae1f94f88ac6fecfff9e2686757dc54fed82d19315662c1616213b63"

  url "https://github.com/kwn00/agent-pulse/releases/download/v#{version}/AgentPulse-#{version}.zip"
  name "Agent Pulse"
  desc "Menu bar usage monitor for Antigravity, GitHub Copilot, Codex and Cursor"
  homepage "https://github.com/kwn00/agent-pulse"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Agent Pulse.app"

  uninstall quit: "dev.agentpulse.app"

  zap trash: [
    "~/Library/Application Support/Agent Pulse",
    "~/Library/Preferences/dev.agentpulse.app.plist",
  ]

  caveats <<~EOS
    Agent Pulse is ad-hoc signed (no Apple Developer ID). If macOS says
    "Agent Pulse.app" Not Opened on first launch, click Done, then allow it under
    System Settings → Privacy & Security → Open Anyway.
  EOS
end
