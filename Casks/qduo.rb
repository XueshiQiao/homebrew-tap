cask "qduo" do
  version "26.10.18"
  sha256 arm:   "f5a1aaf5f0a4430001ba3a7f2ab8ed0a67c260a06737e5e128bc9d9984273c36",
         intel: "f5a1aaf5f0a4430001ba3a7f2ab8ed0a67c260a06737e5e128bc9d9984273c36"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.18/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.18/QDuo.dmg"
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
