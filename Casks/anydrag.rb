cask "anydrag" do
  version "26.06.107"
  sha256 arm:   "5f9989dc76d56ec3802a0395fb9a085f9a00b03183d94b37e5c396495ce47c7c",
         intel: "5f9989dc76d56ec3802a0395fb9a085f9a00b03183d94b37e5c396495ce47c7c"

  on_arm do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.107/AnyDrag.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/AnyDrag/releases/download/v26.06.107/AnyDrag.dmg"
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
