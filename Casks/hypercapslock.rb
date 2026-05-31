cask "hypercapslock" do
  version "26.06.103"
  sha256 arm:   "53bd6385a8a1ae1c6ae6219051f6fb7e6559cacad9cb422aa65bea46e824c848",
         intel: "53bd6385a8a1ae1c6ae6219051f6fb7e6559cacad9cb422aa65bea46e824c848"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.103/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.103/HyperCapslock.dmg"
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
