cask "xtools" do
  version "26.11.15"
  sha256 arm:   "3bd223c1fcf37360cee1fa24458b8d332e39cf3e9e2245f9b06659bbd79bcec3",
         intel: "3bd223c1fcf37360cee1fa24458b8d332e39cf3e9e2245f9b06659bbd79bcec3"

  on_arm do
    url "https://github.com/XueshiQiao/XTools/releases/download/v26.11.15/XTools.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/XTools/releases/download/v26.11.15/XTools.dmg"
  end

  name "XTools"
  desc "Menu bar toolbox of small macOS system utilities, one per tab"
  homepage "https://github.com/XueshiQiao/XTools"

  livecheck do
    url "https://github.com/XueshiQiao/XTools/releases/latest/download/latest.json"
    strategy :page_match
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "XTools.app"
end
