cask "xtools" do
  version "26.07.14"
  sha256 arm:   "57cdf0b5d4bab31fcad9f1f5b38c725b83f56094eaf39317ff0a8d17564229f9",
         intel: "57cdf0b5d4bab31fcad9f1f5b38c725b83f56094eaf39317ff0a8d17564229f9"

  on_arm do
    url "https://github.com/XueshiQiao/XTools/releases/download/v26.07.14/XTools.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/XTools/releases/download/v26.07.14/XTools.dmg"
  end

  name "XTools"
  desc "Menu bar toolbox of small macOS system utilities, one per tab"
  homepage "https://github.com/XueshiQiao/XTools"

  livecheck do
    url "https://github.com/XueshiQiao/XTools/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "XTools.app"
end
