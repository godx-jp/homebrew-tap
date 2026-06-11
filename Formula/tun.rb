class Tun < Formula
  desc "Self-hosted tunnel CLI — forward local ports to *.tun.godx.jp"
  homepage "https://tun.godx.jp"
  version "1.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
      sha256 "675b67e8f64a1b53f63d60da89e4e415dab675e7d5604d078fb5d2c3da156371"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
      sha256 "859bc39a48e5ddfa0059364382714271545135a0ec5222b18092209b751effb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_arm64.tar.gz"
      sha256 "154b58633f2cc1fb3325b9b9b3442759f0efcf761d1e3f9c0e01b2518bcefa76"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
      sha256 "c5725d5c132664e0aea5b3e1b72cc03906a690ce20c7bb4c6e846bbffb054d2e"
    end
  end

  def install
    bin.install "tun"
  end

  test do
    assert_match "tun", shell_output("#{bin}/tun version")
  end
end
