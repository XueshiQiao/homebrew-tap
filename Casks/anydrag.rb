cask "anydrag" do
  version "26.10.118"
  sha256 arm:   "608b84f2e69be432658a1942bbd70f6b92b2290dd406c8fafc9f42b7e1e9f156",
         intel: "608b84f2e69be432658a1942bbd70f6b92b2290dd406c8fafc9f42b7e1e9f156"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.118/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.118/AnyDrag.dmg"
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
