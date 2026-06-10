cask "tun" do
  version "1.6.2"

  on_macos do
    on_intel do
      sha256 "bc8fe6c640cd5927b40d7574844876a0d70b9f954583dc357f32c0c7677606d8"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "081613fdf3bc53fa7c138c647d1c022f42104b407466bbe2f519fb1e4a542b81"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "f7bec8424bad84b104c4cd33a92cda7bff043d3baa76c126c93109ec3907e2db"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "47b9deb75607d3331767b86ab570761153b959adcca19d1530877d94a8ab1b88"
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
