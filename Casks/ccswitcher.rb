cask "ccswitcher" do
  version "1.7.1"
  sha256 arm:   "ba4036240e36916abbdc9c7f4b36b040a4dc6b750c5fee62d61670cfeded26ac",
         intel: "ba4036240e36916abbdc9c7f4b36b040a4dc6b750c5fee62d61670cfeded26ac"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.7.1/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.7.1/CCSwitcher.dmg"
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
