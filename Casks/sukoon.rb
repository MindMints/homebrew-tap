cask "sukoon" do
  version "1.6.1"
  sha256 "f891eaa3a25d8854fb4a7834f5295b1bf73bec714ffb3b738be0f7eba5fa2610"

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
