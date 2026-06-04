cask "tun" do
  version "1.1.0"

  on_macos do
    on_intel do
      sha256 "6a75478e92b31e17d8251a0009cb4e2f0ea5051ee2a0e62ba471619eb7ebe7a5"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "e816fbb4cfa3cd58c10f372bc901b9fd9781654c5d8717d08b4336825aea1a08"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "da32ca9d189d3a915bd05c7247cd141816f92240adc837ff85eda07bed298069"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "503bc03588c9f34c9922c2848da9d578e21491431730de7c1a4ae4a68d1dea41"
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
