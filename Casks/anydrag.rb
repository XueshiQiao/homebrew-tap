cask "anydrag" do
  version "26.10.119"
  sha256 arm:   "443f5d8c0e69c4763e27fe95b2f4c18a0c3cb307a81c34d5612b828f30bf0b76",
         intel: "443f5d8c0e69c4763e27fe95b2f4c18a0c3cb307a81c34d5612b828f30bf0b76"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.119/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.119/AnyDrag.dmg"
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
