cask "markedit@1.36" do
    version "1.36.0"
    sha256 "0669fd22c71f3f8a5812b1a739fb79a801a50df199872887dd7639099bdea15e"
    url "https://github.com/MarkEdit-app/MarkEdit/releases/download/macos-15/MarkEdit-1.36.0.dmg"
    
    name "MarkEdit"
    desc "Markdown editor"
    homepage "https://github.com/MarkEdit-app/MarkEdit"

    depends_on macos: :sequoia
    depends_on maximum_macos: :sequoia

    app "MarkEdit.app"

    zap trash: [
        "~/Library/Application Scripts/app.cyan.markedit*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.cyan.markedit.sfl*",
        "~/Library/Containers/app.cyan.markedit*",
        "~/Library/Saved Application State/app.cyan.markedit.savedState",
      ]
end
