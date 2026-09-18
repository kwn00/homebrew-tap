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

  depends_on macos: ">= :sonoma"

  app "Agent Pulse.app"

  # The app is ad-hoc signed (no Developer ID), so lift the quarantine flag Homebrew
  # attaches to downloads; otherwise Gatekeeper refuses to launch it.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Agent Pulse.app"],
                   sudo: false
  end

  uninstall quit: "dev.agentpulse.app"

  zap trash: [
    "~/Library/Application Support/Agent Pulse",
    "~/Library/Preferences/dev.agentpulse.app.plist",
  ]
end
