cask "anydrag" do
  version "26.10.117"
  sha256 arm:   "56f459c91da2487ae99d75eb912c012df4491e5db9ba313479c9bb8b1e5e5dc8",
         intel: "56f459c91da2487ae99d75eb912c012df4491e5db9ba313479c9bb8b1e5e5dc8"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.117/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.10.117/AnyDrag.dmg"
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
