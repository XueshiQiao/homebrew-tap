cask "hypercapslock" do
  version "26.11.115"
  sha256 arm:   "bf453723d3f373320daa2ab3fb6f360f16ed3ac2fdbda8624cfd0f4a731786a4",
         intel: "bf453723d3f373320daa2ab3fb6f360f16ed3ac2fdbda8624cfd0f4a731786a4"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.115/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.115/HyperCapslock.dmg"
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
