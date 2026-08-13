cask "bracepaste" do
  version "1.3.0"
  sha256 "7e9fbf4fc4d760654ee2350534dabb600de140c2c4418867686eed10cbca8132"

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
