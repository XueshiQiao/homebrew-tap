cask "hypercapslock" do
  version "0.8.7"
  sha256 arm:   "9594d626fca245cb28fd15d85c6431919bd992897dca44ca875a3f6c8bae8627",
         intel: "96dcf11ecdbee101bce6a25e876048d17708a4f30387b5eb7f1cb59b236427ee"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.7/HyperCapslock_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.7/HyperCapslock_x64.app.tar.gz"
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
