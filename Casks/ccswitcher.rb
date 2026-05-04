cask "ccswitcher" do
  version "1.4.5"
  sha256 arm:   "e8541b732fe9436273f1f33e53818d8edfb5e7a3e44a4ad977642a16645d2497",
         intel: "e8541b732fe9436273f1f33e53818d8edfb5e7a3e44a4ad977642a16645d2497"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.4.5/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.4.5/CCSwitcher.dmg"
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
