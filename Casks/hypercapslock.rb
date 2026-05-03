cask "hypercapslock" do
  version "0.8.9"
  sha256 arm:   "4e7eb5f372c1c6ec29583a2f091fad6bd34ec01f9848aac2f11943cbaea4b874",
         intel: "4390706ecf207b4fb6448c5dec99ba094f4e3428dbbd23c6115b69fcc1675ec0"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.9/HyperCapslock_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v0.8.9/HyperCapslock_x64.app.tar.gz"
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
