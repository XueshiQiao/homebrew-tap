cask "ccswitcher" do
  version "1.8.2"
  sha256 arm:   "b208f76311497c2983c51f505aa640003d93b18eaca6aa2fc56de780ced01918",
         intel: "b208f76311497c2983c51f505aa640003d93b18eaca6aa2fc56de780ced01918"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.8.2/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.8.2/CCSwitcher.dmg"
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
