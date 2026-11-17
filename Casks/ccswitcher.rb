cask "ccswitcher" do
  version "2.2.0"
  sha256 arm:   "cee03a953aa73c9dc887fd653aa2a42fdd62559786c10f6b7f628ca19212e1c8",
         intel: "cee03a953aa73c9dc887fd653aa2a42fdd62559786c10f6b7f628ca19212e1c8"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.2.0/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.2.0/CCSwitcher.dmg"
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
