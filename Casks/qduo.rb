cask "qduo" do
  version "26.09.15"
  sha256 arm:   "1e27c3b228639f70b06dd306398925914054aaebef491d4dc6e1e109585a5f38",
         intel: "1e27c3b228639f70b06dd306398925914054aaebef491d4dc6e1e109585a5f38"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.15/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.15/QDuo.dmg"
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
