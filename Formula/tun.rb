class Tun < Formula
  desc "Self-hosted tunnel CLI — forward local ports to *.tun.godx.jp"
  homepage "https://tun.godx.jp"
  version "2.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
      sha256 "a1b9fb116cabdae60afdeb9dca92b75d43c407c3d9caf48ef5e85c3b4140e47b"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
      sha256 "bae23aa849ac013e5dab513959883566e56aaf4c8d8e6ac902728e9b0ed454a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_arm64.tar.gz"
      sha256 "5da10bef1f72e629f832ec2f47bb5f68ef88bfeb6dc11cbc5ea5c9abd1ba1fc7"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
      sha256 "a7f946fedd3c21c56097765f1288ef38426a0d8d92712318cc397f0ae534ad0e"
    end
  end

  def install
    bin.install "tun"
  end

  test do
    assert_match "tun", shell_output("#{bin}/tun version")
  end
end
