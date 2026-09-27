cask "qduo" do
  version "26.09.5"
  sha256 arm:   "f8c29292fb82bda1039401935964274cd001ce7311160fed56f49c87bb2689e3",
         intel: "f8c29292fb82bda1039401935964274cd001ce7311160fed56f49c87bb2689e3"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.5/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.5/QDuo.dmg"
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
