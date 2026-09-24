cask "qduo" do
  version "26.09.3"
  sha256 arm:   "de1b5e5898cd21d066d451eced65a251d3a90b5f9955708008cf9db6c3401e97",
         intel: "de1b5e5898cd21d066d451eced65a251d3a90b5f9955708008cf9db6c3401e97"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.3/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.3/QDuo.dmg"
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
