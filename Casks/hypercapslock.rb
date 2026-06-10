cask "hypercapslock" do
  version "26.06.104"
  sha256 arm:   "b3e1dcf2492f480d15877aa212c2854cbfc94c4e456bba16b531c99440638c6b",
         intel: "b3e1dcf2492f480d15877aa212c2854cbfc94c4e456bba16b531c99440638c6b"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.104/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.104/HyperCapslock.dmg"
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
