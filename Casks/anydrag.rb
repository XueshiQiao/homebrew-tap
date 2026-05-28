cask "anydrag" do
  version "26.05.101"
  sha256 arm:   "2831637dbb6f97883d93a0566aa1c81b07569c9386656ef20238c14eae99080d",
         intel: "2831637dbb6f97883d93a0566aa1c81b07569c9386656ef20238c14eae99080d"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.05.101/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.05.101/AnyDrag.dmg"
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
