cask "tun" do
  version "1.2.1"

  on_macos do
    on_intel do
      sha256 "160ca4f60e3119b78070a4ad7824724574c4adf5c078d8026bfca3cec8bec303"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "3b00f2df4802190a369330d2e0a396550cdf4ac38e56bea115d24f4c5207bcb0"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "6a460462b34b29112bffed8b6a32990d249d7a201c003ad7c0086bd4cf99b499"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "3dd5bddf55262b1c388b2ef011ddc9c34c45e0ba9f79d3b6ef5486c7e4083cab"
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
