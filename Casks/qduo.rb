cask "qduo" do
  version "26.09.6"
  sha256 arm:   "633964ea90a7e4220d039890befe3c2bd31798824495bfee6d4923a3b1414c26",
         intel: "633964ea90a7e4220d039890befe3c2bd31798824495bfee6d4923a3b1414c26"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.6/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.6/QDuo.dmg"
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
