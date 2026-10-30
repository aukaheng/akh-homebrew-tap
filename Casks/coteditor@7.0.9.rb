cask "coteditor@7.0.9" do
    on_sequoia do
        version "7.0.9"
        sha256 "b1cd481dd8f1271ffc7478dcc65d7e3a1f17893a3bc1f4afa38a9a93beaf5877"
        url "https://github.com/coteditor/CotEditor/releases/download/7.0.9/CotEditor_7.0.9.dmg"
    end

    name "CotEditor"
    desc "Plain-text editor for web pages, program source codes and more"
    homepage "https://coteditor.com/"

    depends_on :macos

    app "CotEditor.app"
  
    binary "#{appdir}/CotEditor.app/Contents/SharedSupport/bin/cot"
    
    uninstall quit: "com.coteditor.CotEditor"

    zap trash: [
        "~/Library/Application Scripts/com.coteditor.CotEditor",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coteditor.coteditor.sfl*",
        "~/Library/Caches/com.apple.helpd/Generated/com.coteditor.CotEditor.help*",
        "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.coteditor.CotEditor.help*",
        "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/Japanese/HelpSDMIndexFile/com.coteditor.CotEditor.help*",
        "~/Library/Caches/com.coteditor.CotEditor",
        "~/Library/Containers/com.coteditor.CotEditor",
        "~/Library/Preferences/com.coteditor.CotEditor.plist",
    ]
end
