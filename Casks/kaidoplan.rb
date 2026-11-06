cask "kaidoplan" do
  version "3.0.0"
  sha256 "d4210cecda1f9408f602d04a886eb9f65d2fa738082cae0a534615714ab9c6a0"

  url "https://github.com/cygnusyang/KaidoPlan/releases/download/v#{version}/KaidoPlan-v#{version}.dmg"
  name "KaidoPlan"
  desc "Project planning workbench for AI coding agents"
  homepage "https://ai.cygnusyang.top/kaidoplan/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "KaidoPlan.app"

  # Preferences and OTA logs are what KaidoPlan actually writes; the Cache and
  # Saved Application State entries are standard AppKit locations that Homebrew
  # skips when absent.
  zap trash: [
    "~/Library/Caches/top.cygnusyang.kaidoplan",
    "~/Library/Containers/top.cygnusyang.kaidoplan",
    "~/Library/Logs/KaidoPlan",
    "~/Library/Preferences/top.cygnusyang.kaidoplan.plist",
    "~/Library/Saved Application State/top.cygnusyang.kaidoplan.savedState",
  ]

  caveats <<~EOS
    Your licence file lives at
      ~/Library/Application Support/KaidoPlan/license.json
    `brew uninstall --zap --cask kaidoplan` deliberately leaves that directory
    alone, so reinstalling keeps your licence. Remove it by hand if you want it gone.
  EOS
end
