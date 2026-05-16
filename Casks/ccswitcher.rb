cask "ccswitcher" do
  version "1.8.1"
  sha256 arm:   "fd3eb4bed38136ee0ee6d9092fa15c03a824d650220b3af9f840946f6912e13f",
         intel: "fd3eb4bed38136ee0ee6d9092fa15c03a824d650220b3af9f840946f6912e13f"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.8.1/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.8.1/CCSwitcher.dmg"
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
