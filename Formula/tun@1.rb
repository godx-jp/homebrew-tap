class TunAT1 < Formula
  desc "Self-hosted tunnel CLI — forward local ports to *.tun.godx.jp"
  homepage "https://tun.godx.jp"
  version "1.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
      sha256 "4d4c6bf5de1f3e53694c72c782821cf4daed0bd77bf7ce8e1db1a1d8e56a93ef"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
      sha256 "d8fa1a8307eb5d71304c5d382a2a760a1b154316c047654b28011ee785b0d1af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_arm64.tar.gz"
      sha256 "16886c2f7d61f259163162ac87035a350b37136f19620f572031fdf395c99bb1"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
      sha256 "c65b18b79e46260ae6efa22c0a714d4e5e89e628c441689036b41150d09dd609"
    end
  end

  def install
    bin.install "tun"
  end

  test do
    assert_match "tun", shell_output("#{bin}/tun version")
  end
end
