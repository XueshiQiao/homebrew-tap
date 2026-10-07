cask "qduo" do
  version "26.10.23"
  sha256 arm:   "1bba7d149949436cead61c3c763a5300fa4ed93b9cd0cff4851e8fd9f0da773a",
         intel: "1bba7d149949436cead61c3c763a5300fa4ed93b9cd0cff4851e8fd9f0da773a"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.23/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.23/QDuo.dmg"
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
