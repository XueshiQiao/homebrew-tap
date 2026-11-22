cask "qduo" do
  version "26.11.29"
  sha256 arm:   "3ce389e752d278946265f26f6245b6840488312ece85376558f3216d7cb621c9",
         intel: "3ce389e752d278946265f26f6245b6840488312ece85376558f3216d7cb621c9"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.29/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.29/QDuo.dmg"
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
