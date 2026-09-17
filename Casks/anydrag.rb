cask "anydrag" do
  version "26.09.115"
  sha256 arm:   "90371a78956100375ff8bb23af1b873d10cbf8ee031fb6e09ec25da4d0bd83a4",
         intel: "90371a78956100375ff8bb23af1b873d10cbf8ee031fb6e09ec25da4d0bd83a4"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.09.115/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.09.115/AnyDrag.dmg"
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
