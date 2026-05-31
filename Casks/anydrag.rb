cask "anydrag" do
  version "26.06.104"
  sha256 arm:   "dd8a97c94259195f9947e980176025d4bd7998bfdace802d84002755b4f11a4f",
         intel: "dd8a97c94259195f9947e980176025d4bd7998bfdace802d84002755b4f11a4f"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.104/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.104/AnyDrag.dmg"
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
