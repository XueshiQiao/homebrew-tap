cask "anydrag" do
  version "1.4.2"
  sha256 arm:   "0b74eafcafa43f6c41ac5cb6b87dc1b9d468c8f89375e33300258aa395fdddaa",
         intel: "0b74eafcafa43f6c41ac5cb6b87dc1b9d468c8f89375e33300258aa395fdddaa"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v1.4.2/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v1.4.2/AnyDrag.dmg"
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
