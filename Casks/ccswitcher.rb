cask "ccswitcher" do
  version "1.6.0"
  sha256 arm:   "727fced4ca105bd4f799fceaaf2139923d53952d5849cc6c87be91dc64669ce2",
         intel: "727fced4ca105bd4f799fceaaf2139923d53952d5849cc6c87be91dc64669ce2"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.6.0/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.6.0/CCSwitcher.dmg"
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
