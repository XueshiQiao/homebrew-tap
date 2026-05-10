cask "ccswitcher" do
  version "1.5.7"
  sha256 arm:   "50d1a87ef2ab1c1a6ed486f19bf715d059c108343ba0c44009bbeca321985c5d",
         intel: "50d1a87ef2ab1c1a6ed486f19bf715d059c108343ba0c44009bbeca321985c5d"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.7/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.7/CCSwitcher.dmg"
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
