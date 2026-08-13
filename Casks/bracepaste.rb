cask "bracepaste" do
  version "1.2.1"
  sha256 "2d6a4e20c1468c939035792b79618eb1dfbb2ce50954607f9638b076b843de25"

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
    right-click the app -> Open, or install with:
      brew install --cask --no-quarantine vishalnarkhede/tap/bracepaste
  EOS
end
