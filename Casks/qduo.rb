cask "qduo" do
  version "26.10.20"
  sha256 arm:   "ff876a86410468de5dda2e71f63e6c0614ade58eb730f3e33daec109b5fb5566",
         intel: "ff876a86410468de5dda2e71f63e6c0614ade58eb730f3e33daec109b5fb5566"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.20/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.20/QDuo.dmg"
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
