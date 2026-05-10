cask "ccswitcher" do
  version "1.5.3"
  sha256 arm:   "40fba2cf0456761ee3ac9acb99287e4140ffa1c5574e57ccfbf649ba5eda623a",
         intel: "40fba2cf0456761ee3ac9acb99287e4140ffa1c5574e57ccfbf649ba5eda623a"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.3/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v1.5.3/CCSwitcher.dmg"
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
