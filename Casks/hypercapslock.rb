cask "hypercapslock" do
  version "1.1.0"
  sha256 arm:   "536df6655e683fb51368890c47ae04747b1f92b2551954adb64c19792046b4c2",
         intel: "87880b85b0b36cc054be15fc079e6a5d69ac16fbab483b989af7c1e16cbf166b"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v1.1.0/HyperCapslock_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v1.1.0/HyperCapslock_x64.app.tar.gz"
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
