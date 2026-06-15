cask "anydrag" do
  version "26.06.106"
  sha256 arm:   "172028d8b34fa8c94544d9b3d17808533e6d43bbfa895c4332a81043125cff95",
         intel: "172028d8b34fa8c94544d9b3d17808533e6d43bbfa895c4332a81043125cff95"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.106/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.106/AnyDrag.dmg"
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
