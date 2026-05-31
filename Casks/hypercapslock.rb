cask "hypercapslock" do
  version "26.06.102"
  sha256 arm:   "496449b9b419f0e20ad58340e59544a432a07fc267f1498976b142276827a6b2",
         intel: "496449b9b419f0e20ad58340e59544a432a07fc267f1498976b142276827a6b2"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.102/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.102/HyperCapslock.dmg"
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
