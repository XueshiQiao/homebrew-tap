cask "ccswitcher" do
  version "2.1.5"
  sha256 arm:   "eaaee872e8265c7ea5be90991b14f1dfdbcfff4b52eda199502c0b26b2abc710",
         intel: "eaaee872e8265c7ea5be90991b14f1dfdbcfff4b52eda199502c0b26b2abc710"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.5/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.5/CCSwitcher.dmg"
  end

  name "CCSwitcher"
  desc "Menu bar app to manage and switch between Claude Code accounts"
  homepage "https://github.com/XueshiQiao/CCSwitcher"

  livecheck do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/latest/download/latest.json"
    strategy :page_match
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  app "CCSwitcher.app"
end
