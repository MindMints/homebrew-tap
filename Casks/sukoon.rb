cask "sukoon" do
  version "1.4"
  sha256 "a58c70ad717742bc6dd7115fd9bfe0bc77c8b9da7a8dbd86f08c258052f35b4b"

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
