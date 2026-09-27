cask "qduo" do
  version "26.09.7"
  sha256 arm:   "020a180ab06276c09b2f34c7e8260c32442c28514691337302300ee1616ae05f",
         intel: "020a180ab06276c09b2f34c7e8260c32442c28514691337302300ee1616ae05f"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.7/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.7/QDuo.dmg"
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
