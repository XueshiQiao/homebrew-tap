cask "hypercapslock" do
  version "26.11.112"
  sha256 arm:   "761a69a1174bde6cc3518f2979949b3fee71eecf9417faba3fbd5324c372a6a9",
         intel: "761a69a1174bde6cc3518f2979949b3fee71eecf9417faba3fbd5324c372a6a9"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.112/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.112/HyperCapslock.dmg"
  end

  name "HyperCapslock"
  desc "Caps Lock enhancement utility"
  homepage "https://github.com/XueshiQiao/HyperCapslock"

  livecheck do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/latest/download/latest.json"
    strategy :page_match
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  app "HyperCapslock.app"
end
