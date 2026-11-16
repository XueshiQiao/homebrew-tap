cask "hypercapslock" do
  version "26.11.116"
  sha256 arm:   "76b6efba587f6ed2330399d0d57d0fdc32972d780fc27368920814703abce302",
         intel: "76b6efba587f6ed2330399d0d57d0fdc32972d780fc27368920814703abce302"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.116/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.116/HyperCapslock.dmg"
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
