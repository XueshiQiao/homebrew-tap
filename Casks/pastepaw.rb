cask "pastepaw" do
  version "1.2.5"
  sha256 arm:   "33f4ef55fbfac3ae334ee13a262ae23160b71410c0c416b25c9bc0d737c8d58d",
         intel: "54ac8d922086f9919a2b39da632d9cc0eb5972631c36a8c88cf9d1d8bd6f8c46"

  on_arm do
    url "https://github.com/XueshiQiao/PastePaw/releases/download/main/PastePaw_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/PastePaw/releases/download/main/PastePaw_x64.app.tar.gz"
  end

  name "PastePaw"
  desc "Clipboard history manager"
  homepage "https://github.com/XueshiQiao/PastePaw"

  auto_updates true

  livecheck do
    url "https://github.com/XueshiQiao/PastePaw/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  app "PastePaw.app"
end
