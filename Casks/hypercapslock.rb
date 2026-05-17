cask "hypercapslock" do
  version "1.0.1"
  sha256 arm:   "ea42d9edd4f2a66088bb5060bb272df6668523cc451a33292a414c959075bbe3",
         intel: "9236f17cb2b3bd0b80162b0cf90000624897188baddbaa1c190af2602eef8684"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v1.0.1/HyperCapslock_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v1.0.1/HyperCapslock_x64.app.tar.gz"
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
