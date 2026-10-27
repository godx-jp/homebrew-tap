class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.28"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.28/gx_v0.8.28_darwin_arm64.tar.gz"
      sha256 "b66fbdc82ac017e8f065805d827c61343c2f8307a9d6387b0e0935686659a7ca"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.28/gx_v0.8.28_darwin_amd64.tar.gz"
      sha256 "52e248deb9377f999bf4e3d62bc097aa12d9d06c4d9b3393214de85f91ea8803"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.28/gx_v0.8.28_linux_arm64.tar.gz"
      sha256 "64d585e2f784e77def3cc62c2d0eda1a74bd4befe9eb4cb49d53fe0e01c6510e"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.28/gx_v0.8.28_linux_amd64.tar.gz"
      sha256 "2569d3c8fe0326a1d504ed1b2d78c0aee274ff7dbaf448171c1e4d80fac40276"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.28", shell_output("#{bin}/gx --version")
  end
end
