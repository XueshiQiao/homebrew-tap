cask "ccswitcher" do
  version "1.4.4"
  sha256 arm:   "0926e97200602fb073136ee5ee8beb4a1e5660960b0d7a4908c5ced418eed132",
         intel: "0926e97200602fb073136ee5ee8beb4a1e5660960b0d7a4908c5ced418eed132"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.4.4/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.4.4/CCSwitcher.dmg"
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
