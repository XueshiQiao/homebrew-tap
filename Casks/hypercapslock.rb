cask "hypercapslock" do
  version "26.05.101"
  sha256 arm:   "1200cd1921b6d91a283574e3125551d67e1eb3570650b5fe03a4f53e9f0d5562",
         intel: "1200cd1921b6d91a283574e3125551d67e1eb3570650b5fe03a4f53e9f0d5562"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.05.101/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.05.101/HyperCapslock.dmg"
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
