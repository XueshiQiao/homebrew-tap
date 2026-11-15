cask "qduo" do
  version "26.11.27"
  sha256 arm:   "78d1545968af990ac97be51565eb6258a7530946aedf4a8fa37c0ea5f5ffc976",
         intel: "78d1545968af990ac97be51565eb6258a7530946aedf4a8fa37c0ea5f5ffc976"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.27/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.27/QDuo.dmg"
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
