cask "hypercapslock" do
  version "26.11.111"
  sha256 arm:   "bab94840dfb3e6d8ad868a663f7e39b72257185467b0323cfd6770b5757ad24c",
         intel: "bab94840dfb3e6d8ad868a663f7e39b72257185467b0323cfd6770b5757ad24c"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.111/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.111/HyperCapslock.dmg"
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
