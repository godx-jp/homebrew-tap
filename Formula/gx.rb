class Gx < Formula
  desc "CLI hợp nhất của godx (auth / service / admin)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.9.1"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.1/gx_v0.9.1_darwin_arm64.tar.gz"
      sha256 "622a8c57e31d7c3803760a0cece5b8dbbfdea55b07cbd000960d6ced9aaacf9b"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.1/gx_v0.9.1_darwin_amd64.tar.gz"
      sha256 "92578f9ef4f0c59c3d37d0cc189dcd86bad4806c8dfd210cec780cc2d584e6aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.1/gx_v0.9.1_linux_arm64.tar.gz"
      sha256 "8ed7d627e500fb82235aec3645fff29d5d0e1cceb2b0fa895f74a8d6bb1d9200"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.9.1/gx_v0.9.1_linux_amd64.tar.gz"
      sha256 "f3d6dd922a2e07527d35b92278232641667b15f0c1cdc2bb6cad29580b72d059"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx v0.9.1", shell_output("#{bin}/gx version")
  end
end
