cask "bracepaste" do
  version "1.3.3"
  sha256 "59acb9a4e27ac59f710036d3d259de600c41fd6eece717e6b3645374ce99aa35"

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
