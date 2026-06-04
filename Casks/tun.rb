cask "tun" do
  version "1.1.1"

  on_macos do
    on_intel do
      sha256 "cfffb0ba39dd3b43f4afe210cb33e076906b541add2d884aeec9b0dd140e6beb"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "f85a284fa8be8bf06fca5cb5074c0377b10dd0ee9768c244281256ef3458d5d4"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "17fdaace8e3c5f26710d021758b208ce7dcae06beeae7e2a528242376bf90ea9"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "f3cc8808782b8a1b83ba320ceaa1c3918ef7aa70d11fe61f5f61cc03bd20bb6b"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_arm64.tar.gz"
    end
  end

  name "tun"
  desc "ngrok-style tunnel CLI — forward local ports to *.s.godx.jp (gx-tun)"
  homepage "https://s.godx.jp"

  livecheck do
    skip "Released manually."
  end

  binary "tun"

  postflight do
    if system_command("/usr/bin/xattr", args: ["-h"]).exit_status == 0
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/tun"]
    end
  end
end
