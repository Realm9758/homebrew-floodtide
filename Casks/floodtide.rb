cask "floodtide" do
  version "1.4.1"
  sha256 "952dd6d808c1a3f3f4c8cbee9c655d5f4a4673ac874926291ef3597a54dbbd65"

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
