class Gx < Formula
  desc "CLI hợp nhất của godx (auth / service / admin)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.9.2"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.2/gx_v0.9.2_darwin_arm64.tar.gz"
      sha256 "f556913e930cfef6ceb91bc84b2f3fcc085f9355b2302cb8ae916d61cb36cbe5"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.2/gx_v0.9.2_darwin_amd64.tar.gz"
      sha256 "744182efb5b447a80aac28fd3029e918cfe64a4d9bbf3c44e917e4de80b063ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.2/gx_v0.9.2_linux_arm64.tar.gz"
      sha256 "15120e5cf71cdfb3fd9074cdc15e12f8d3db8d04fb10d2b1914a85c98212dbbb"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.2/gx_v0.9.2_linux_amd64.tar.gz"
      sha256 "195d3b7bade37efc0e7a921fe4775ce829152d9e23e0fc8d58f9c7a8570244ba"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx v0.9.2", shell_output("#{bin}/gx version")
  end
end
