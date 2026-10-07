cask "qduo" do
  version "26.10.22"
  sha256 arm:   "293d1850615d265da83f126ba809d14dbe4e70d2d73380ba6c35c573fd9901e0",
         intel: "293d1850615d265da83f126ba809d14dbe4e70d2d73380ba6c35c573fd9901e0"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.22/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.10.22/QDuo.dmg"
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
