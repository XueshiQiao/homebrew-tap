cask "qduo" do
  version "26.11.26"
  sha256 arm:   "e726ce5ab8d2a65d22a97ff18fffc0f81778b8ed7c14f1518ed57b459fd58641",
         intel: "e726ce5ab8d2a65d22a97ff18fffc0f81778b8ed7c14f1518ed57b459fd58641"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.26/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.26/QDuo.dmg"
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
