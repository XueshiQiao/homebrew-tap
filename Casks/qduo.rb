cask "qduo" do
  version "26.09.13"
  sha256 arm:   "823aa1bdccab154de9889fa82390b5090bf1d2c008d5f7b6e7b74343c11707ff",
         intel: "823aa1bdccab154de9889fa82390b5090bf1d2c008d5f7b6e7b74343c11707ff"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.13/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.13/QDuo.dmg"
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
