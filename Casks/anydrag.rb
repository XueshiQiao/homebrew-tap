cask "anydrag" do
  version "26.07.111"
  sha256 arm:   "847683634a3e8004d056ef6cb54bcb6d35520ec33725f4e85644fceb6312563b",
         intel: "847683634a3e8004d056ef6cb54bcb6d35520ec33725f4e85644fceb6312563b"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.07.111/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.07.111/AnyDrag.dmg"
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
