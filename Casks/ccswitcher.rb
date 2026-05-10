cask "ccswitcher" do
  version "1.5.9"
  sha256 arm:   "8350146d77c6ba54ddf53b60e52b3a595c41889c6ea8365963f365092b135efa",
         intel: "8350146d77c6ba54ddf53b60e52b3a595c41889c6ea8365963f365092b135efa"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.9/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.9/CCSwitcher.dmg"
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
