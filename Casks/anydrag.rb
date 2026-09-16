cask "anydrag" do
  version "26.09.114"
  sha256 arm:   "60e0408ef1ae68b7ce10e09b83c6ed6529759d1bb3b9c6c8c019fa84f254b6cd",
         intel: "60e0408ef1ae68b7ce10e09b83c6ed6529759d1bb3b9c6c8c019fa84f254b6cd"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.09.114/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.09.114/AnyDrag.dmg"
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
