cask "anydrag" do
  version "26.06.109"
  sha256 arm:   "387b54a8a4ffff6e2a01822c31bdd292149a45594d7a4a1c3295796693b84e0c",
         intel: "387b54a8a4ffff6e2a01822c31bdd292149a45594d7a4a1c3295796693b84e0c"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.109/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.109/AnyDrag.dmg"
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
