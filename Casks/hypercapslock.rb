cask "hypercapslock" do
  version "1.2.0"
  sha256 arm:   "71f997aeb7d56f969f3f071358575d44f98c596720fe3fab260779e1e376170b",
         intel: "a8ac0df5975aea2036caaa95ea42e944c76a957f3b9829c2915333c7fc6af86b"

  on_arm do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v1.2.0/HyperCapslock_aarch64.app.tar.gz"
  end
  on_intel do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/download/v1.2.0/HyperCapslock_x64.app.tar.gz"
  end

  name "HyperCapslock"
  desc "Caps Lock enhancement utility"
  homepage "https://github.com/XueshiQiao/HyperCapslock"

  auto_updates true

  livecheck do
    url "https://github.com/XueshiQiao/HyperCapslock/releases/latest/download/latest.json"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  app "HyperCapslock.app"
end
