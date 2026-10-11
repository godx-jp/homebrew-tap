class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.19"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.19/gx_v0.8.19_darwin_arm64.tar.gz"
      sha256 "b2d2299e2fb50332dd71e24acfcdf0949dd283d8d31873bc5bdf726ee63ac63f"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.19/gx_v0.8.19_darwin_amd64.tar.gz"
      sha256 "13bd365165438a345fa3697f5952113668871c373e4ba4ae0a1b777a79a333e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.19/gx_v0.8.19_linux_arm64.tar.gz"
      sha256 "e223ea4d2e0101c36ec2444104c72b40c6549b9079d36ebe2652af6b1be6723d"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.19/gx_v0.8.19_linux_amd64.tar.gz"
      sha256 "6285089e07ec74f39ed99e581268c048a4f72a1457ba04038572706821fc61ff"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.19", shell_output("#{bin}/gx --version")
  end
end
