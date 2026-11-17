cask "qduo" do
  version "26.11.28"
  sha256 arm:   "fb490144e17b6ff94331b7cf0f0b1436b72d8c8f781d022786a7945fbd203825",
         intel: "fb490144e17b6ff94331b7cf0f0b1436b72d8c8f781d022786a7945fbd203825"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.28/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.28/QDuo.dmg"
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
