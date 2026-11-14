cask "hypercapslock" do
  version "26.11.113"
  sha256 arm:   "dcab8fa8ec1ce25d4bfb24785f0cf0ef89363c7f818d651903a821930d1d31ae",
         intel: "dcab8fa8ec1ce25d4bfb24785f0cf0ef89363c7f818d651903a821930d1d31ae"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.113/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.113/HyperCapslock.dmg"
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
