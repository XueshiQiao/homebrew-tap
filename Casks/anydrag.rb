cask "anydrag" do
  version "26.07.110"
  sha256 arm:   "2c4a4a59e878ee5d0405a491883eb9a82e0467c82c695ea5df07460d0663a0f6",
         intel: "2c4a4a59e878ee5d0405a491883eb9a82e0467c82c695ea5df07460d0663a0f6"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.07.110/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.07.110/AnyDrag.dmg"
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
