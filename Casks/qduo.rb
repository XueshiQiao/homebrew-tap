cask "qduo" do
  version "26.09.10"
  sha256 arm:   "41d9040504917927c6a58de792d48b1492fc4a566394e09c81660596349d3c7e",
         intel: "41d9040504917927c6a58de792d48b1492fc4a566394e09c81660596349d3c7e"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.10/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.10/QDuo.dmg"
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
