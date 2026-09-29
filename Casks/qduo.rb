cask "qduo" do
  version "26.09.12"
  sha256 arm:   "58356a45a15a31a8b61b0813e927e9f7686b3ff19438817dcfedc1268ff85b3f",
         intel: "58356a45a15a31a8b61b0813e927e9f7686b3ff19438817dcfedc1268ff85b3f"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.12/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.12/QDuo.dmg"
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
