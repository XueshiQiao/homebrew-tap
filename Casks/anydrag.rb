cask "anydrag" do
  version "1.2.6"
  sha256 "124ad6bd40a1e0beae33e625d03ea2c13bfa6f8e96e94b65a023eaf61d9f7a3a"

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
