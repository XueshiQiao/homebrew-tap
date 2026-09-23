cask "qduo" do
  version "26.09.2"
  sha256 arm:   "114519745c5a2e7dde7738382842ed30aa4ead5e7d54c30e16734c2d6091f47d",
         intel: "114519745c5a2e7dde7738382842ed30aa4ead5e7d54c30e16734c2d6091f47d"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.2/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.2/QDuo.dmg"
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
