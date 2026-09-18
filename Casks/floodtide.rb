cask "floodtide" do
  version "1.2.11"
  sha256 "144c194986ea578e0cd3e797b80552319e00814cbfcbdaa629f9da449d059d9e"

  url "https://pajb0isilbwjuxjt.public.blob.vercel-storage.com/floodtide/releases/#{version}/Floodtide-#{version}.dmg"
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
