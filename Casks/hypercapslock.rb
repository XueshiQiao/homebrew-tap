cask "hypercapslock" do
  version "0.8.6"
  sha256 arm:   "f1d86cf3d3fa5f3dcfa6168123d396f6155f43d771bef81517b837a6cc75b747",
         intel: "41bef7cf26fda120ddce1357b9e88cdcc14002825de0e68854349c65aadb401a"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.6/HyperCapslock_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.6/HyperCapslock_x64.app.tar.gz"
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
