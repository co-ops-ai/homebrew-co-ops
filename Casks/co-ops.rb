cask "co-ops" do
  arch arm: "arm64", intel: "x64"
  
  version "1.0.2"
  sha256 arm: "a6c413808f3ff0d425f6d24cb74a93b7f178148b90cfdcd24404cf3ba5ef4715", intel: "4a88a78a4a91420a934726c0acefdd3cc11a93919d6cca90c6c076b0c4017ada"

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