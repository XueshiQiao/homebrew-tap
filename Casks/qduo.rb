cask "qduo" do
  version "26.09.9"
  sha256 arm:   "f863553ac09862796aeafe032ba7b2a0f960b922ff019bfe6edc9f5752458c64",
         intel: "f863553ac09862796aeafe032ba7b2a0f960b922ff019bfe6edc9f5752458c64"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.9/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.9/QDuo.dmg"
  end

  name "QDuo"
  desc "Popup of your own actions, including AI prompts, for selected text"
  homepage "https://github.com/XueshiQiao/qduo"

  livecheck do
    url "https://github.com/XueshiQiao/qduo/releases/latest/download/latest.json"
    strategy :page_match
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "QDuo.app"
end
