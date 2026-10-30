cask "thaw@2.2.0-beta.1" do
    version "2.2.0-beta.1"
    sha256 "f5d3f842cb0b33ad7bb6ab1e18dbb0b44f29c4f8549a09aea0bc47a745d0ea40"
    url "https://github.com/thaw-app/Thaw/releases/download/2.2.0-beta.1/Thaw.dmg"
    
    name "Thaw"
    desc "Menu bar manager"
    homepage "https://github.com/thaw-app/Thaw/"

    depends_on macos: :sequoia
    depends_on maximum_macos: :sequoia

    app "Thaw.app"

    uninstall quit: ["com.stonerl.Thaw", "com.stonerl.Thaw.MenuBarItemService"]

    zap trash: [
        "~/Library/Application Scripts/*.com.stonerl.Thaw",
        "~/Library/Application Scripts/com.stonerl.Thaw.ThawControls",
        "~/Library/Application Support/Thaw",
        "~/Library/Caches/com.stonerl.Thaw",
        "~/Library/Containers/com.stonerl.Thaw.ThawControls",
        "~/Library/Group Containers/*.com.stonerl.Thaw",
        "~/Library/HTTPStorages/com.stonerl.Thaw",
        "~/Library/Logs/Thaw",
        "~/Library/Preferences/com.stonerl.Thaw.plist",
        "~/Library/WebKit/com.stonerl.Thaw",
    ]
end
