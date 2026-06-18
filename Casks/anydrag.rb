cask "anydrag" do
  version "26.06.108"
  sha256 arm:   "90a7c22d317ac5b3bf3fe425d8dd06994ad02da0c5787c5459520a02eee8a43c",
         intel: "90a7c22d317ac5b3bf3fe425d8dd06994ad02da0c5787c5459520a02eee8a43c"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.108/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.108/AnyDrag.dmg"
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
