class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.25"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.25/gx_v0.8.25_darwin_arm64.tar.gz"
      sha256 "6fa802b519eb2809dc90c85341fbece0cafa5dee79bda1dc62c5d4d12abe4256"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.25/gx_v0.8.25_darwin_amd64.tar.gz"
      sha256 "31b6099d5815ae5434544ac615566b2d6f566eb7f4ac9cd1278c93146e6efd34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.25/gx_v0.8.25_linux_arm64.tar.gz"
      sha256 "65ccc2fe322072ecc27a7efbf4f100a0ff9da0a4d19712ffc1e8993f775c0923"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.25/gx_v0.8.25_linux_amd64.tar.gz"
      sha256 "e07e07b603a3ca8fc831530c01626fd37d17cadc3dd5c8a1549efd61ef351f02"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.25", shell_output("#{bin}/gx --version")
  end
end
