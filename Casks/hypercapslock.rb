cask "hypercapslock" do
  version "26.06.106"
  sha256 arm:   "3753788751f14945f09512993fcfbaf5c115d71427044b4cf396888855c3eb3e",
         intel: "3753788751f14945f09512993fcfbaf5c115d71427044b4cf396888855c3eb3e"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.106/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.106/HyperCapslock.dmg"
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
