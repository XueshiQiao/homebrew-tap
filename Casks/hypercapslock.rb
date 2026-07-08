cask "hypercapslock" do
  version "26.07.108"
  sha256 arm:   "4acc675d808bb549977946f4f8c214e631115770201e1d4bc5d56738a95b5eb1",
         intel: "4acc675d808bb549977946f4f8c214e631115770201e1d4bc5d56738a95b5eb1"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.07.108/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.07.108/HyperCapslock.dmg"
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
