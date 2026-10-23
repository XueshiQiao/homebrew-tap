cask "anydrag" do
  version "26.10.120"
  sha256 arm:   "f670e8e155ae869058c3a11c8cd5bce0081daf7695d698d76dfa46f91de3f714",
         intel: "f670e8e155ae869058c3a11c8cd5bce0081daf7695d698d76dfa46f91de3f714"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.120/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.120/AnyDrag.dmg"
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
