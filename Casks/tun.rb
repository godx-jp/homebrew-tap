cask "tun" do
  version "1.6.0"

  on_macos do
    on_intel do
      sha256 "a910093a4a0cd7961ff674bbca746250f13e3f016635f7637f888c30a3f1fc05"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "8fa27c42584cc533dfe8f7a0814a06e4c4bd0153799dd23e6a8e8f2ce8a31125"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "46ea46bb38f7a4b7f325875170a7c021d5569fed97dfa7514a468bd1f6e472e3"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "33e4bafeb9d7a25f57194dda2ea1da1fa7ba3ec51b354bad5907b605d4d92e83"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_arm64.tar.gz"
    end
  end

  name "tun"
  desc "Self-hosted tunnel CLI — forward local ports to *.tun.godx.jp"
  homepage "https://tun.godx.jp"

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
