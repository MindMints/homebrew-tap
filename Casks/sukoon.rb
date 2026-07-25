cask "sukoon" do
  version "1.6"
  sha256 "4d3eabfa9a809bcf1b5bcfbb2d3d1faaaeec9efefe51a8d47d1f166fb673d468"

  url "https://github.com/MindMints/Sukoon-updates/releases/download/v#{version}/Sukoon-#{version}.zip"
  name "Sukoon"
  desc "Prayer times, adhan, and qibla in the menu bar"
  homepage "https://mindmints.ai/sukoon"

  livecheck do
    url "https://github.com/MindMints/Sukoon-updates"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Sukoon.app"

  zap trash: [
    "~/Library/Application Support/AdhanMenu",
    "~/Library/Caches/ai.mindmints.Sukoon",
    "~/Library/Group Containers/45QCZ72475.ai.mindmints.Sukoon",
    "~/Library/HTTPStorages/ai.mindmints.Sukoon",
    "~/Library/Preferences/ai.mindmints.Sukoon.plist",
  ]
end
