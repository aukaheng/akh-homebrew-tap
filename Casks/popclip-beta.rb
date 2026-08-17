cask "popclip-beta" do
  version "6143"
  sha256 "2ef38104a0e81117fa674e0990b5aa731138c8d846b681bc1839550bf4c350cb"
  url "https://pilotmoon.com/downloads/beta/PopClip-build-6143.zip"
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
