cask "qduo" do
  version "26.09.16"
  sha256 arm:   "d635ebecca9a6f1c08ee48615243f45449fed3797c443146059f5e1c966ff514",
         intel: "d635ebecca9a6f1c08ee48615243f45449fed3797c443146059f5e1c966ff514"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.16/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.16/QDuo.dmg"
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
