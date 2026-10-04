cask "anydrag" do
  version "26.10.116"
  sha256 arm:   "9deb5e4ba40ab33f3a01e61c5597f73fcbb66a52a8abc881efdd724ea007d392",
         intel: "9deb5e4ba40ab33f3a01e61c5597f73fcbb66a52a8abc881efdd724ea007d392"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.116/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.116/AnyDrag.dmg"
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
