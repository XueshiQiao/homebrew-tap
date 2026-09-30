cask "qduo" do
  version "26.09.14"
  sha256 arm:   "7d09280ad46c7f5fd7489688533ff0846e184381b76718413dba5cc45cc48b37",
         intel: "7d09280ad46c7f5fd7489688533ff0846e184381b76718413dba5cc45cc48b37"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.14/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.14/QDuo.dmg"
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
