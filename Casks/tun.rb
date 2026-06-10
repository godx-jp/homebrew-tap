cask "tun" do
  version "1.7.1"

  on_macos do
    on_intel do
      sha256 "713cf8c72315b5efd13457f0b6f1d9f08d0e6847b070f0a49892fafc56bfb44a"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "53aa99e77682ce6ed5966181d5f0f9d1748c2a9ab2ea8a583099f9cee60d47e2"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "7f08764186aa074492abe3431e94ed49f03bec78bbdc380dcec2705ef4a6f75b"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "54cfb0041db2e51f38187f538a6d935a817e78b25cb7b0542c7f393d06aaeda8"
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
