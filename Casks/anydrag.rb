cask "anydrag" do
  version "1.3.2"
  sha256 "e21d2652af3f439a921cc660023152717b868fa92f0e04a02cadb064640207c4"

  url "https://github.com/XueshiQiao/AnyDrag/releases/download/v#{version}/AnyDrag.dmg"
  name "AnyDrag"
  desc "Move any window by holding a modifier key and dragging anywhere on it"
  homepage "https://github.com/XueshiQiao/AnyDrag"

  livecheck do
    url "https://raw.githubusercontent.com/XueshiQiao/AnyDrag/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "AnyDrag.app"

  zap trash: [
    "~/Library/Application Support/AnyDrag",
    "~/Library/Caches/me.xueshi.anydrag",
    "~/Library/HTTPStorages/me.xueshi.anydrag",
    "~/Library/Logs/AnyDrag",
    "~/Library/Preferences/me.xueshi.anydrag.plist",
    "~/Library/Saved Application State/me.xueshi.anydrag.savedState",
  ]
end
