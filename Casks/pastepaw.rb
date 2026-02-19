cask "pastepaw" do
  version "1.2.3"
  sha256 arm:   "496ec3ef0b6606555693d63debf3814d065e7da38a5ff0eecc50f8e23f3e240c",
         intel: "3c01b62841fbea02d3f2290db5ad48e962805666930990a3d0a90a99fec49814"

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
