cask "ccswitcher" do
  version "1.5.2"
  sha256 arm:   "5cd54aaedc04df33fc315106127451586f7939e5a91c4bf496dd752f777010ad",
         intel: "5cd54aaedc04df33fc315106127451586f7939e5a91c4bf496dd752f777010ad"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.2/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.2/CCSwitcher.dmg"
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
