cask "hypercapslock" do
  version "26.11.117"
  sha256 arm:   "b983ede2bb2b83dcc3f955771706b72a41cd9bba0d61c3e57ef92b048f5d63dc",
         intel: "b983ede2bb2b83dcc3f955771706b72a41cd9bba0d61c3e57ef92b048f5d63dc"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.117/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.117/HyperCapslock.dmg"
  end

  name "HyperCapslock"
  desc "Caps Lock enhancement utility"
  homepage "https://github.com/XueshiQiao/HyperCapslock"

  livecheck do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/latest/download/latest.json"
    strategy :page_match
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  app "HyperCapslock.app"
end
