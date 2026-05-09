cask "ccswitcher" do
  version "1.4.7"
  sha256 arm:   "8cb846e9ecb4804022a218f4e6801ef34fa02a1f96caddc31e5566176f69312e",
         intel: "8cb846e9ecb4804022a218f4e6801ef34fa02a1f96caddc31e5566176f69312e"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.4.7/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.4.7/CCSwitcher.dmg"
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
