cask "sukoon" do
  version "1.6.8"
  sha256 "fcea599deb0d8315859b75fbd799637c54341cf8dcd0ec9af6c2c0a0c0c85da1"

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
