cask "kaido" do
  version "2.2.0"
  sha256 "04575b3f63152457c91ba3fb402184c5e7db1eed997beae66fe2774c57c702aa"

  url "https://github.com/cygnusyang/Kaido/releases/download/v#{version}/Kaido-v#{version}.dmg"
  name "Kaido Plan"
  desc "Project planning workbench for AI coding agents"
  homepage "https://cygnusyang.github.io/Kaido/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Kaido.app"

  # Preferences and OTA logs are what Kaido actually writes; the Cache and
  # Saved Application State entries are standard AppKit locations that Homebrew
  # skips when absent.
  zap trash: [
    "~/Library/Caches/top.cygnusyang.kaido",
    "~/Library/Logs/Kaido",
    "~/Library/Preferences/top.cygnusyang.kaido.plist",
    "~/Library/Saved Application State/top.cygnusyang.kaido.savedState",
  ]
end
