cask "ccswitcher" do
  version "1.5.4"
  sha256 arm:   "33eafce03fdff15d4962700a0e92cb21bf2f156bab5ff8e8a7d758124c22aa46",
         intel: "33eafce03fdff15d4962700a0e92cb21bf2f156bab5ff8e8a7d758124c22aa46"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.4/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.4/CCSwitcher.dmg"
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
