cask "pastepaw" do
  version "1.2.5"
  sha256 arm:   "496ec3ef0b6606555693d63debf3814d065e7da38a5ff0eecc50f8e23f3e240c",
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
