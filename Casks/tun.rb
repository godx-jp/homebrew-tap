cask "tun" do
  version "1.8.0"

  on_macos do
    on_intel do
      sha256 "eeac8168da306f7019d0fc3764d9ab36c7e1498ee83f95127bb26ae5e27714fe"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "274756317258022f82f68fe795579f475ed4f4d897e37a282b448ff0a9bd07af"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "2b13434ae83e8345bb8aafdfd2d2c8cdb72e55121c9dce37c146b44069e65ae3"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "1277c49fca4e114e0c2ad6de098ca23c8a85edfa95d06a61f3c61dc29e378193"
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
