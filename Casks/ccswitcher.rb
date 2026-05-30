cask "ccswitcher" do
  version "1.9.0"
  sha256 arm:   "5fff9db856fbf64ffab6adbf1c63592499c0425606d6324f6dff6886e30405d9",
         intel: "5fff9db856fbf64ffab6adbf1c63592499c0425606d6324f6dff6886e30405d9"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.9.0/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.9.0/CCSwitcher.dmg"
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
