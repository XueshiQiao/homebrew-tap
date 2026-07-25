cask "anydrag" do
  version "26.07.112"
  sha256 arm:   "618d7588fe16f64186a83916a69b8be6cc3258545b4a15156ae232d1a0c5f2c8",
         intel: "618d7588fe16f64186a83916a69b8be6cc3258545b4a15156ae232d1a0c5f2c8"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.07.112/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.07.112/AnyDrag.dmg"
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
