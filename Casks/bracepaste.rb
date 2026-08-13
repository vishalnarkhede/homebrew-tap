cask "bracepaste" do
  version "1.3.1"
  sha256 "fcc53c9a89208d73f179085ade1c913d720c2f07c2ef90b40a7c8f2a6ad8b0de"

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
