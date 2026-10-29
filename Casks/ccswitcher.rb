cask "ccswitcher" do
  version "2.1.1"
  sha256 arm:   "e10fdff76feb057943e3b3d154c35b7dfc5e742cd49b851aa8ec6cf175b86c19",
         intel: "e10fdff76feb057943e3b3d154c35b7dfc5e742cd49b851aa8ec6cf175b86c19"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.1/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.1/CCSwitcher.dmg"
  end

  name "CCSwitcher"
  desc "Menu bar app to manage and switch between Claude Code accounts"
  homepage "https://github.com/XueshiQiao/CCSwitcher"

  livecheck do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/latest/download/latest.json"
    strategy :page_match
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  app "CCSwitcher.app"
end
