cask "anydrag" do
  version "26.07.113"
  sha256 arm:   "5e259167026e5cd48ddd6163eeb1da5dbfd1c797a593bacd3dedf5983b611061",
         intel: "5e259167026e5cd48ddd6163eeb1da5dbfd1c797a593bacd3dedf5983b611061"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.07.113/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.07.113/AnyDrag.dmg"
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
