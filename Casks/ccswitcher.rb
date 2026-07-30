cask "ccswitcher" do
  version "1.12.0"
  sha256 arm:   "2411fb4d08b6053da0e24820b0ec9a88a1fdc223b11e1f472625e917f6bc1763",
         intel: "2411fb4d08b6053da0e24820b0ec9a88a1fdc223b11e1f472625e917f6bc1763"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.12.0/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.12.0/CCSwitcher.dmg"
  end

  name "CCSwitcher"
  desc "Menu bar app to manage and switch between Claude Code accounts"
  homepage "https://github.com/XueshiQiao/CCSwitcher"

  livecheck do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  app "CCSwitcher.app"
end
