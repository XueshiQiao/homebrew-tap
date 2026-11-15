cask "hypercapslock" do
  version "26.11.114"
  sha256 arm:   "543c4d8af1cf06ab282c3ec66f4aaf3bb2b83d5a78467b9e5503f99ddd30217d",
         intel: "543c4d8af1cf06ab282c3ec66f4aaf3bb2b83d5a78467b9e5503f99ddd30217d"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.114/HyperCapslock.dmg"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v26.11.114/HyperCapslock.dmg"
  end

  name "HyperCapslock"
  desc "Caps Lock enhancement utility"
  homepage "https://github.com/XueshiQiao/HyperCapslock"

  livecheck do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/latest/download/latest.json"
    strategy :page_match
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  auto_updates true

  app "HyperCapslock.app"
end
