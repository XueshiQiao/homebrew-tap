cask "hypercapslock" do
  version "0.8.1"
  sha256 arm:   "e156210662dc5965bfb163655335885c1a844ef5ac696608dcd92e836bef4183",
         intel: "d25970ad0aeb7d4190887d9ad8b9c930113e9ff3231b80ec4fe46ba39210979c"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.1/HyperCapslock_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.1/HyperCapslock_x64.app.tar.gz"
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
