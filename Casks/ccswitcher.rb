cask "ccswitcher" do
  version "2.1.4"
  sha256 arm:   "cc229201c8264cb5776756e5fde64f6c3766edf7a39674fa5da4bc80ddcfeabc",
         intel: "cc229201c8264cb5776756e5fde64f6c3766edf7a39674fa5da4bc80ddcfeabc"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.4/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.4/CCSwitcher.dmg"
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
