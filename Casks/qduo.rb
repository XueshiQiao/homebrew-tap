cask "qduo" do
  version "26.10.21"
  sha256 arm:   "d95195a3870028c06a82695d4afe73aa697ee0ecaebf1947ce7d3e0f8a68bccd",
         intel: "d95195a3870028c06a82695d4afe73aa697ee0ecaebf1947ce7d3e0f8a68bccd"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.21/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.21/QDuo.dmg"
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
