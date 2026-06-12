class Tun < Formula
  desc "Self-hosted tunnel CLI — forward local ports to *.tun.godx.jp"
  homepage "https://tun.godx.jp"
  version "2.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
      sha256 "e25026bdd03a3a214fcd7138c1dc691ac2e829576a68093b5399f2418484ad97"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
      sha256 "bfb6a00793be0dcb9a1d89a503e13bfe5b90ea16593bebebe7934fa9ca2fb24e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_arm64.tar.gz"
      sha256 "6e75580d4e8bd1e74a99bfb01320079bd1e305b40ff11e0f2b1f4e023476c59f"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
      sha256 "6bf5149a477fad255feebf575b8f5ef03eef7d4e058c0cccacf5522262d2f67a"
    end
  end

  def install
    bin.install "tun"
  end

  test do
    assert_match "tun", shell_output("#{bin}/tun version")
  end
end
