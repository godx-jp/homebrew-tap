class Gx < Formula
  desc "CLI hợp nhất của godx (auth / service / admin)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.0/gx_v0.9.0_darwin_arm64.tar.gz"
      sha256 "ef77dfae5cbe793d66cca79be1e37c12e39d14b2407a33557d5fa5c91ac182c5"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.0/gx_v0.9.0_darwin_amd64.tar.gz"
      sha256 "ae04b76d8cb02921db13143caa3de0d22931adae876a46a8160a9ac85fd4e59e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.0/gx_v0.9.0_linux_arm64.tar.gz"
      sha256 "c248610619b30798c8609989d5f0bf9a39711a8945d246e901d99fec1094362a"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.0/gx_v0.9.0_linux_amd64.tar.gz"
      sha256 "9e4c073740daaa1e231db2654077d4d86a90e5d3ee69c2aca0de37e800d7abb5"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx v0.9.0", shell_output("#{bin}/gx version")
  end
end
