cask "ccswitcher" do
  version "2.1.0"
  sha256 arm:   "3f7beba7ae611e2e8c07d0b62a589b42f0f898cc9997e6f81065ad401672c5eb",
         intel: "3f7beba7ae611e2e8c07d0b62a589b42f0f898cc9997e6f81065ad401672c5eb"

  on_arm do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.0/CCSwitcher.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/CCSwitcher/releases/download/v2.1.0/CCSwitcher.dmg"
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
