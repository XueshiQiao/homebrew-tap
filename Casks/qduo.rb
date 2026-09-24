cask "qduo" do
  version "26.09.4"
  sha256 arm:   "15e6143bfbb73d222599a370fca54b71830ba647126c61e3d37d38c655869436",
         intel: "15e6143bfbb73d222599a370fca54b71830ba647126c61e3d37d38c655869436"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.4/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.4/QDuo.dmg"
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
