cask "anydrag" do
  version "26.06.105"
  sha256 arm:   "39455e4491e529197939e300b065b1d62b2888c648a4512542cc9e0e590eb195",
         intel: "39455e4491e529197939e300b065b1d62b2888c648a4512542cc9e0e590eb195"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.105/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.105/AnyDrag.dmg"
  end

  name "AnyDrag"
  desc "Move any window by holding a modifier key and dragging anywhere on it"
  homepage "https://github.com/XueshiQiao/AnyDrag"

  livecheck do
    url "https://github.com/XueshiQiao/AnyDrag/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "AnyDrag.app"
end
