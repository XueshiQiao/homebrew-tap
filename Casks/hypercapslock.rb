cask "hypercapslock" do
  version "0.8.5"
  sha256 arm:   "6bf599cf147104e5b3f32229626145e721543287cb10b32e0b4810eb73ee6921",
         intel: "1822babedab98c2264615a042ce169192f31da0773c5bf40c960bc547b684354"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.5/HyperCapslock_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.5/HyperCapslock_x64.app.tar.gz"
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
