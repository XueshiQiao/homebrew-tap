cask "ccswitcher" do
  version "1.8.3"
  sha256 arm:   "ef26f43bd6cdc262b6307bf0daa62f266c7c86de5b51d59da9d49768b29da2d1",
         intel: "ef26f43bd6cdc262b6307bf0daa62f266c7c86de5b51d59da9d49768b29da2d1"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.8.3/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.8.3/CCSwitcher.dmg"
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
