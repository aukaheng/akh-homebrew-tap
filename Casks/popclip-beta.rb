cask "popclip-beta" do
  version "6007"
  sha256 "4db8a2249f63db52460cf0661a56ad6ef974ce0f5f1276b918bdc409848b1558"
  url "https://pilotmoon.com/downloads/beta/PopClip-build-6007.zip"
  name "PopClip"
  homepage "https://www.popclip.app/"

  app "PopClip.app"

  zap trash: [
    "~/Library/Application Support/com.pilotmoon.popclip",
    "~/Library/Application Support/PopClip",
    "~/Library/Caches/com.pilotmoon.popclip",
    "~/Library/Preferences/com.pilotmoon.popclip.plist",
    "~/Library/SyncedPreferences/com.apple.kvs/ChangeTokens/NoEncryption/PopClip",
  ]
end
