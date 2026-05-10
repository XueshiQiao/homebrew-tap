cask "ccswitcher" do
  version "1.5.5"
  sha256 arm:   "574d5a84caa2c05a32570ba8047901ba07c63701d7313cc19c701a2d2efee23b",
         intel: "574d5a84caa2c05a32570ba8047901ba07c63701d7313cc19c701a2d2efee23b"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.5/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.5/CCSwitcher.dmg"
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
