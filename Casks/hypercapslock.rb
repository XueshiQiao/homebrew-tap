cask "hypercapslock" do
  version "26.10.110"
  sha256 arm:   "3d1f5435f5835e23aad39ce57c2be7e1b68b96185a98153618c823f07ca441cc",
         intel: "3d1f5435f5835e23aad39ce57c2be7e1b68b96185a98153618c823f07ca441cc"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.10.110/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.10.110/HyperCapslock.dmg"
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
