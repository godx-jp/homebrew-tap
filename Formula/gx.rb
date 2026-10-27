class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.27"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.27/gx_v0.8.27_darwin_arm64.tar.gz"
      sha256 "6b82c2d7b5349423c4e521391f3c4ff21ab8384d6ab1df89bb64427b167ac6ce"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.27/gx_v0.8.27_darwin_amd64.tar.gz"
      sha256 "3a5e46696eba6f587c9342565ecc4cb1ce144ae4ce9c37d5ef297052e5636260"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.27/gx_v0.8.27_linux_arm64.tar.gz"
      sha256 "030ecd156f4a332aa48cff03af09c1559d7aef872bd87c871dcb23246a5c1bce"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.27/gx_v0.8.27_linux_amd64.tar.gz"
      sha256 "0c11cdd1cdebb38242bcfdde5d77060a8c7464ebf6bcfdbce6adcfcd2c3a89d4"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.27", shell_output("#{bin}/gx --version")
  end
end
