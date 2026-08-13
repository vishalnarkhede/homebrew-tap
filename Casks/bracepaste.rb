cask "bracepaste" do
  version "1.3.2"
  sha256 "f7a75498d72c488a6b68ebd039e3b86ae449a38a2b4e48062737c1198b8e690a"

  url "https://github.com/vishalnarkhede/BracePaste/releases/download/v#{version}/BracePaste-#{version}.dmg"
  name "BracePaste"
  desc "Format JSON and SQL from the clipboard with a double Cmd+C gesture"
  homepage "https://github.com/vishalnarkhede/BracePaste"

  app "BracePaste.app"

  zap trash: [
    "~/Library/Preferences/com.vishalnarkhede.BracePaste.plist",
  ]

  caveats <<~EOS
    BracePaste is ad-hoc signed. If macOS blocks the first launch, either
    right-click the app -> Open, or clear the quarantine flag:
      xattr -dr com.apple.quarantine "#{appdir}/BracePaste.app"
  EOS
end
