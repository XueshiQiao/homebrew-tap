cask "anydrag" do
  version "26.05.102"
  sha256 arm:   "ba14552e23b63afdc7a70409b1a085326b2b45fa05897a82b6f56ba2740f586e",
         intel: "ba14552e23b63afdc7a70409b1a085326b2b45fa05897a82b6f56ba2740f586e"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.05.102/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.05.102/AnyDrag.dmg"
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
