cask "hypercapslock" do
  version "26.05.100"
  sha256 arm:   "285bcb43de73359034837670896379bf930f5e2bbb6d776ab1e37572411c9718",
         intel: "285bcb43de73359034837670896379bf930f5e2bbb6d776ab1e37572411c9718"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.05.100/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.05.100/HyperCapslock.dmg"
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
