cask "qduo" do
  version "26.09.8"
  sha256 arm:   "9d490c0a7b1f84d139498d625637f0b333e8fa99f3494ed2f879e43d9ee35d41",
         intel: "9d490c0a7b1f84d139498d625637f0b333e8fa99f3494ed2f879e43d9ee35d41"

  on_arm do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.8/QDuo.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/qduo/releases/download/v26.09.8/QDuo.dmg"
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
