class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.24"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.24/gx_v0.8.24_darwin_arm64.tar.gz"
      sha256 "f05a0b3076db3d59a5bb1e3d2b3df7b0e5e2490234bc638e3c9fd93e707a6f39"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.24/gx_v0.8.24_darwin_amd64.tar.gz"
      sha256 "ed370633deb3a8c5aa7be59d38ad2cc3c9d55d7dc238a90cb270307ee761e1f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.24/gx_v0.8.24_linux_arm64.tar.gz"
      sha256 "b45ee76ed73d2ce71a15a4a6d042e246f2a1d66347a123a8d83ab933d90ec38b"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.24/gx_v0.8.24_linux_amd64.tar.gz"
      sha256 "bac1052cf04c7de2fde4b4f8d35dc9c27aa528a3eef9d85946f8bf92a79e71f3"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.24", shell_output("#{bin}/gx --version")
  end
end
