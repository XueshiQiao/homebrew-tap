cask "ccswitcher" do
  version "2.0.0"
  sha256 arm:   "e89991d56d83b0604a59e34c82387f57aa24521367d5f6c51511c28f951fb6f8",
         intel: "e89991d56d83b0604a59e34c82387f57aa24521367d5f6c51511c28f951fb6f8"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.0.0/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.0.0/CCSwitcher.dmg"
  end

  name "CCSwitcher"
  desc "Menu bar app to manage and switch between Claude Code accounts"
  homepage "https://github.com/XueshiQiao/CCSwitcher"

  livecheck do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/latest/download/latest.json"
    strategy :page_match
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  app "CCSwitcher.app"
end
