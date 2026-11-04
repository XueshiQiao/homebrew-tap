cask "ccswitcher" do
  version "2.1.2"
  sha256 arm:   "85d1f31667f4955586f8aef4f81899cd42e86707012d1bf3ff97e9f2b65d59a9",
         intel: "85d1f31667f4955586f8aef4f81899cd42e86707012d1bf3ff97e9f2b65d59a9"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.2/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.2/CCSwitcher.dmg"
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
