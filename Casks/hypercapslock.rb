cask "hypercapslock" do
  version "1.0.0"
  sha256 arm:   "c1a11913cc37143e6d3c9e47b22a8207c794a715c71c134c11d2a93d1838f73a",
         intel: "96275255ca1b73f0617ed6d67496f1019848f43170bc06130d98d22ccfebeafb"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v1.0.0/HyperCapslock_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v1.0.0/HyperCapslock_x64.app.tar.gz"
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
