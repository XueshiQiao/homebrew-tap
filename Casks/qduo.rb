cask "qduo" do
  version "26.10.25"
  sha256 arm:   "524ae0977d4f168baac005978e3566ce7b54d9b0215d0ceb7fcce3f730360757",
         intel: "524ae0977d4f168baac005978e3566ce7b54d9b0215d0ceb7fcce3f730360757"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.25/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.25/QDuo.dmg"
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
