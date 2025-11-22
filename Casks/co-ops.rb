cask "co-ops" do
  arch arm: "arm64", intel: "x64"
  
  version "1.0.1"
  sha256 arm: "553bafbf1a413283851fb827dffc212be0dfc6a5a13ba6c75a0f23d0a2514bc1", intel: "d1149ca0216ba3f13a3f198e5d23a51416ce8fd1b9c964e4618a316d315f4096"

  url "https://download.co-ops.ai/Co-OPS-#{version}-#{arch}.dmg"
  name "Co-OPS"
  desc "A modern Kubernetes development environment and IDE"
  homepage "https://co-ops.ai"
  
  app "Co-OPS.app"
  
  zap trash: [
    "~/Library/Application Support/Co-OPS",
    "~/Library/Caches/Co-OPS",
    "~/Library/Preferences/Co-OPS.plist",
    "~/Library/Saved Application State/Co-OPS.savedState"
  ]
end