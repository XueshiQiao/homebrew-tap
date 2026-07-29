cask "ccswitcher" do
  version "1.11.0"
  sha256 arm:   "76d3cdd265b42ba1d72392e332d1186919fdb0032d475baa3570106e1f110d40",
         intel: "76d3cdd265b42ba1d72392e332d1186919fdb0032d475baa3570106e1f110d40"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.11.0/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.11.0/CCSwitcher.dmg"
  end

  name "CCSwitcher"
  desc "Menu bar app to manage and switch between Claude Code accounts"
  homepage "https://github.com/XueshiQiao/CCSwitcher"

  livecheck do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  app "CCSwitcher.app"
end
