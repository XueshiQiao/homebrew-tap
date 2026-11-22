cask "qduo" do
  version "26.11.30"
  sha256 arm:   "18e10d3d8d632c379c18fd258d75e3d3a5bd43a00882362d3d753793e6a41131",
         intel: "18e10d3d8d632c379c18fd258d75e3d3a5bd43a00882362d3d753793e6a41131"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.30/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.11.30/QDuo.dmg"
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
