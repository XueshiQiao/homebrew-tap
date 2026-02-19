cask "notifier" do
  version "1.1.4"
  sha256 arm:   "e62812e467683feb11a613a9efeed8bbb3e8e59dd25097865f982887508a395f",
         intel: "e62812e467683feb11a613a9efeed8bbb3e8e59dd25097865f982887508a395f"

  on_arm do
    url "https://github.com/XueshiQiao/Notifier/releases/download/v1.1.4/Notifier.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/Notifier/releases/download/v1.1.4/Notifier.dmg"
  end

  name "Notifier"
  desc "Notifier - Never miss a prompt again"
  homepage "https://github.com/XueshiQiao/Notifier"

  auto_updates true

  livecheck do
    url "https://github.com/XueshiQiao/Notifier/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  app "Notifier.app"
end
