cask "ccswitcher" do
  version "1.5.6"
  sha256 arm:   "8f6bf717f055b3ff2309856d0e49e840fa1475df6bf8d67ea516efa1f2f0e333",
         intel: "8f6bf717f055b3ff2309856d0e49e840fa1475df6bf8d67ea516efa1f2f0e333"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.6/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.6/CCSwitcher.dmg"
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
