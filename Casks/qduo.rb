cask "qduo" do
  version "26.10.19"
  sha256 arm:   "e2f359a8c21931961dad1fee8a644533e8f9320fd411b60fb8666bb5777b2801",
         intel: "e2f359a8c21931961dad1fee8a644533e8f9320fd411b60fb8666bb5777b2801"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.19/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.19/QDuo.dmg"
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
