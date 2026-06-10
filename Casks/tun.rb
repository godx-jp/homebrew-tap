cask "tun" do
  version "1.7.2"

  on_macos do
    on_intel do
      sha256 "6818e7949123e1a50ee3861d842ec47ab5977924e6ab65377c5035f0462fa9d2"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "6818a2e9e4d0d7586841181e553b1646bf94b59b2e7c2618f395b73e2c775653"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "a8d0b0fc4e3cae712343744a6d8534cd602bb2a78025651c9de6501772a959c0"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "664fe2ae3f3611413ac502bc7b7bfd52746c0bce49d2f3408e273c9c9aa5fc0d"
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
