cask "ccswitcher" do
  version "1.10.0"
  sha256 arm:   "29aed3803094393475c694f89fa645b71e6dfd37f8f1abdb754da32bfb19376d",
         intel: "29aed3803094393475c694f89fa645b71e6dfd37f8f1abdb754da32bfb19376d"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.10.0/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.10.0/CCSwitcher.dmg"
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
