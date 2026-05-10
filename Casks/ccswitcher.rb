cask "ccswitcher" do
  version "1.5.8"
  sha256 arm:   "400b3c608639d38f2f076849e7c6d4baffc122381e5c3ff3c550a16dc00fa7a9",
         intel: "400b3c608639d38f2f076849e7c6d4baffc122381e5c3ff3c550a16dc00fa7a9"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.8/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.8/CCSwitcher.dmg"
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
