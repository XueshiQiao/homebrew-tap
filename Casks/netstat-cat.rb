cask "netstat-cat" do
  version "0.1.1"
  sha256 arm:   "7048f55518769c66f96c67933d19bdf2797921ad4f10b7156feebb6b8954ace1",
         intel: "e368faffec6c3b3d43364fadbbd63375e11b27d1eea41af3f57a099ad7ea4c0a"

  on_arm do
    url "https://github.com/XueshiQiao/netstat-cat/releases/download/v0.1.1/Netstat.Cat_silicon.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/netstat-cat/releases/download/v0.1.1/Netstat.Cat_intel.app.tar.gz"
  end

  name "Netstat Cat"
  desc "GUI application for netstat"
  homepage "https://github.com/XueshiQiao/netstat-cat"

  auto_updates true

  livecheck do
    url "https://github.com/XueshiQiao/netstat-cat/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  app "Netstat Cat.app"
end
