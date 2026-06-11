cask "tun" do
  version "1.10.0"

  on_macos do
    on_intel do
      sha256 "d62cb19e95670bd7f29a429285ae9e3e5664b705f69ef83a88790752daece288"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "863cf6fa85cc8159fcb59a3d9fb54fb2ce3d21406d4f851066b60d537230d591"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "f69d79209a081b21ebdaccb720e58d5b258a28903aac71a6dd7d1348b4042fd7"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "9b978912145f008a1797d17e8e3abc2732893475bfb6cd23c362c265b1aea6fa"
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
