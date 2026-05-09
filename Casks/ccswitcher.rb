cask "ccswitcher" do
  version "1.4.6"
  sha256 arm:   "4ba9b4689756a512e2900ce249b99ff6fa3a7564b84ab4f9ddde1e06a7cbf79e",
         intel: "4ba9b4689756a512e2900ce249b99ff6fa3a7564b84ab4f9ddde1e06a7cbf79e"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.4.6/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.4.6/CCSwitcher.dmg"
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
