cask "tun" do
  version "1.2.2"

  on_macos do
    on_intel do
      sha256 "5cded568896c321dfcb7a5122a2977ddfa5dd806a517b1a0340c567d1fb33fc3"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "0da0219f90b9044f332b7a8527e6485b0dd118a0d8c18c4c8880ea224cba9ae4"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "c3af01e06747c6433f006c4dba6d6eb3393eb1f75afe136df4a9a1cd6ce847b8"
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "a637869c08b25d2a8000986dbb9206caabbc30ac1cb0428f92a85d66b6fa4651"
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
