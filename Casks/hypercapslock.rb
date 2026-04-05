cask "hypercapslock" do
  version "0.8.8"
  sha256 arm:   "6cd5d4a0110d79ca3e6ce48b2acf116bf5d81f0107c4b296cf79ac692fc5b0cb",
         intel: "baf9b7ee6a6bf769764326a16bfac8984bbef13453af91419d95153d6d8158e3"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.8/HyperCapslock_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.8/HyperCapslock_x64.app.tar.gz"
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
