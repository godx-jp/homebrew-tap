cask "tun" do
  version "1.1.2"

  on_macos do
    on_intel do
      sha256 "f4ee5f7033fe4725446c0ea1aa941b4c0addff4ec62206068bca49a52b2fc920"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "0d3f7ba7346d6736b383ec9f661c180501e0626b242a3107bf21becc8be85aa3"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "f23ded4c0bb8b8d379d24136c904b228613b39ed359d34597b939619f0e66e9b"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "20856cfd5029bc6877c8de96f46946f5b2adf516b3ea266045df2dde22b877c5"
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
