cask "ccswitcher" do
  version "1.7.0"
  sha256 arm:   "4d5f07efea5de400e9dc97becfa9a3481a61a20ee3b471c2b147e2da4bb5d370",
         intel: "4d5f07efea5de400e9dc97becfa9a3481a61a20ee3b471c2b147e2da4bb5d370"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.7.0/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.7.0/CCSwitcher.dmg"
  end

  name "CCSwitcher"
  desc "Menu bar app to manage and switch between Claude Code accounts"
  homepage "https://github.com/XueshiQiao/CCSwitcher"

  auto_updates true

  livecheck do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  app "CCSwitcher.app"
end
