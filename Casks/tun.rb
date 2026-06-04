cask "tun" do
  version "1.0.0"

  on_macos do
    on_intel do
      sha256 "655a9c8e63785ec1d62d4ced7f5ba32be8254ab2bb57c7e7a77f852716b7652e"
      url "https://github.com/godx-jp/homebrew-gx-tun/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "05ad30f85840ec1103239592165df2760838b1fd5f4c43156126abfc47dd17eb"
      url "https://github.com/godx-jp/homebrew-gx-tun/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "ab62bedfeede90cbb63418fce346db1e35262ad9211e6a17ca62e8eea920fe50"
      url "https://github.com/godx-jp/homebrew-gx-tun/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "30df8f31cdd49d2bd18d3c708321c6c9b71147c78a5b4ee91d97a9ec76f89956"
      url "https://github.com/godx-jp/homebrew-gx-tun/releases/download/v#{version}/tun_#{version}_linux_arm64.tar.gz"
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
