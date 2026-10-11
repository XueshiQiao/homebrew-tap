cask "qduo" do
  version "26.10.24"
  sha256 arm:   "505525a4e24d4d5775416e640039d0d9297acca19a99daa3448796c9ff801776",
         intel: "505525a4e24d4d5775416e640039d0d9297acca19a99daa3448796c9ff801776"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.24/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.24/QDuo.dmg"
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
