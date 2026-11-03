cask "kaido" do
  version "2.3.0"
  sha256 "b538f9552ee45e832a0bb60793194f9eb3369c6742c9105319b3f876ef9e7fe0"

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
