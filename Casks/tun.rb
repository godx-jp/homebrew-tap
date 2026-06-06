cask "tun" do
  version "1.2.0"

  on_macos do
    on_intel do
      sha256 "3cbc1e0fdcf4acf573d98faffe72413e1644a7dcc8c6fe5d6cf4ca3f8589c42a"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "ead9beb4a494233e3ba372c1bb1710ffd9da10a82910a924342fef81b27fdf42"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "b6a630de172d2bc244ebd1c06ed92bd30b25c6e40e8aa301a7457cc6a836b926"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "adb952b89cc59a36dc8578cc299f81008e45a1e25a1fc4d637d55eb2889856cb"
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
