cask "ccswitcher" do
  version "1.8.0"
  sha256 arm:   "fd797d1626c8ac092da02d30cdd611f0150a7943cf81415522fc2ad5395ec4d8",
         intel: "fd797d1626c8ac092da02d30cdd611f0150a7943cf81415522fc2ad5395ec4d8"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.8.0/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.8.0/CCSwitcher.dmg"
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
