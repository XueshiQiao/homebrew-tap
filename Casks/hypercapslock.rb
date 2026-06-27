cask "hypercapslock" do
  version "26.06.107"
  sha256 arm:   "1dc48494272d40394ac25be608ea496323bf429dc0ad4032b788b03622cdc31b",
         intel: "1dc48494272d40394ac25be608ea496323bf429dc0ad4032b788b03622cdc31b"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.107/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.107/HyperCapslock.dmg"
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
