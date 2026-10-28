class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.29"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.29/gx_v0.8.29_darwin_arm64.tar.gz"
      sha256 "7223b9e97b3ec1ad4d4079022e8cca1f6b2f6f96a2d1db135af9364c974f6fb5"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.29/gx_v0.8.29_darwin_amd64.tar.gz"
      sha256 "4446801db46ae05283144d6a65cb751af89211114deff348bbf1dd5ecceea0b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.29/gx_v0.8.29_linux_arm64.tar.gz"
      sha256 "4aad0a6786d619f548b14ed2e8e9672659f7f91b84a333dc3e3c2e10b5782b1d"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.29/gx_v0.8.29_linux_amd64.tar.gz"
      sha256 "0027c6969637ebc9a619c20aaf4bcde4dd49cb058c01541065a07b0170838743"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.29", shell_output("#{bin}/gx --version")
  end
end
