cask "anydrag" do
  version "26.10.121"
  sha256 arm:   "eb807f012f815f843ae53ea9e4a8e755633c9bbd0db444ed75ac02b7492c1b90",
         intel: "eb807f012f815f843ae53ea9e4a8e755633c9bbd0db444ed75ac02b7492c1b90"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.121/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.121/AnyDrag.dmg"
  end

  name "AnyDrag"
  desc "Move any window by holding a modifier key and dragging anywhere on it"
  homepage "https://github.com/XueshiQiao/AnyDrag"

  livecheck do
    url "https://github.com/XueshiQiao/AnyDrag/releases/latest/download/latest.json"
    strategy :page_match
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "AnyDrag.app"
end
