cask "hypercapslock" do
  version "26.07.109"
  sha256 arm:   "43bbc8674d7ea1f5d82e5f932c4532bc597f429ad02e504bc032e22979d1b291",
         intel: "43bbc8674d7ea1f5d82e5f932c4532bc597f429ad02e504bc032e22979d1b291"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.07.109/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.07.109/HyperCapslock.dmg"
  end

  name "HyperCapslock"
  desc "Caps Lock enhancement utility"
  homepage "https://github.com/XueshiQiao/HyperCapslock"

  livecheck do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  app "HyperCapslock.app"
end
