cask "hypercapslock" do
  version "26.05.26"
  sha256 arm:   "2f85692b4f5702e9d00819c8a8fd10fc15c339ccb8d17b7ed149de3e9b87a38d",
         intel: "2f85692b4f5702e9d00819c8a8fd10fc15c339ccb8d17b7ed149de3e9b87a38d"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.05.26/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.05.26/HyperCapslock.dmg"
  end

  name "HyperCapslock"
  desc "Caps Lock enhancement utility"
  homepage "https://github.com/XueshiQiao/HyperCapslock"

  auto_updates true

  livecheck do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  app "HyperCapslock.app"
end
