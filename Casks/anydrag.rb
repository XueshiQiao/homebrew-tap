cask "anydrag" do
  version "26.05.103"
  sha256 arm:   "5f05a14ea315f7d20fd6cf1da663dfd76c2e9677d86532bcacea7420f1cb2886",
         intel: "5f05a14ea315f7d20fd6cf1da663dfd76c2e9677d86532bcacea7420f1cb2886"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.05.103/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.05.103/AnyDrag.dmg"
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
