cask "floodtide" do
  version "1.4.10"
  sha256 "3a6698e1726ea1dccdf613b23ee801d18b4c9606b5f20de273d24e863a823c5b"

  url "https://bhopstudio.com/floodtide/downloads/Floodtide-#{version}.dmg"
  name "Floodtide"
  desc "Find and install updates for installed applications"
  homepage "https://bhopstudio.com/floodtide"

  livecheck do
    url "https://bhopstudio.com/floodtide/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Floodtide.app"

  uninstall launchctl:  "com.getfloodtide.floodtide.helper",
            quit:       "com.getfloodtide.floodtide",
            login_item: "Floodtide"

  zap trash: [
    "~/Library/Application Support/Floodtide",
    "~/Library/Caches/com.getfloodtide.floodtide",
    "~/Library/HTTPStorages/com.getfloodtide.floodtide",
    "~/Library/Preferences/com.getfloodtide.floodtide.plist",
    "~/Library/Saved Application State/com.getfloodtide.floodtide.savedState",
  ]
end
