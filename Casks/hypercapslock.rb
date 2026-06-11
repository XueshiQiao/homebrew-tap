cask "hypercapslock" do
  version "26.06.105"
  sha256 arm:   "900bbf6289adba770e70e5151678bc8ccdbab1336becb90393b0e86e3f9e616b",
         intel: "900bbf6289adba770e70e5151678bc8ccdbab1336becb90393b0e86e3f9e616b"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.105/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.06.105/HyperCapslock.dmg"
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
