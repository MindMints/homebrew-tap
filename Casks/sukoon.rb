cask "sukoon" do
  version "1.6.5"
  sha256 "d9b14aa9dc0b80033a98efd58dd413fdc91b26a02810f1fd2cd43986dad88b1d"

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
