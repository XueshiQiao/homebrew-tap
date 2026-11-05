cask "ccswitcher" do
  version "2.1.3"
  sha256 arm:   "a751cdf961c9340308837209623e909f7971fa15846431319246dd01a752d9b0",
         intel: "a751cdf961c9340308837209623e909f7971fa15846431319246dd01a752d9b0"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.3/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.3/CCSwitcher.dmg"
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
