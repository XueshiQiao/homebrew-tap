cask "qduo" do
  version "26.11.31"
  sha256 arm:   "b174ded1fc1f246580e0b0c67626cb22538673c49128854952f2d4b18502ca40",
         intel: "b174ded1fc1f246580e0b0c67626cb22538673c49128854952f2d4b18502ca40"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.31/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.31/QDuo.dmg"
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
