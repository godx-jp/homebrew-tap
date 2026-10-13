class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.21"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.21/gx_v0.8.21_darwin_arm64.tar.gz"
      sha256 "8e6ee5f6086894a11af36ea490fe8e5010a4784b1eff020a5dea47dd69326e2f"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.21/gx_v0.8.21_darwin_amd64.tar.gz"
      sha256 "d2d17a26c2dd984423eab4a3e9dd45c7509bbf43d12805bef92c946ea53be5c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.21/gx_v0.8.21_linux_arm64.tar.gz"
      sha256 "aeb697ce7d0b4718f39a2f3ac4bda79ac0ddd24e3af6af5e65ec6e8e46e7ba7b"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.21/gx_v0.8.21_linux_amd64.tar.gz"
      sha256 "ab78388c36d17f9637b4519461f71ee8b0cd581cdda80fb62b83e7608ae33f91"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.21", shell_output("#{bin}/gx --version")
  end
end
