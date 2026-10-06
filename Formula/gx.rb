class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.16"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.16 as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.16/gx_v0.8.16_darwin_arm64.tar.gz"
      sha256 "22d9765aacef3edfea6a937e3dda80c28f3d0213c6d7a40f1f62e3f539b93c71"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.16/gx_v0.8.16_darwin_amd64.tar.gz"
      sha256 "d300f110649359b76fe173056a05dd1e8a0a8be5d7208895d41e2e31dd534a83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.16/gx_v0.8.16_linux_arm64.tar.gz"
      sha256 "feb72002b0d347ab5baa75ca4d557d86b2ce4b7bf0a97de48122276fa7e6dec9"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.16/gx_v0.8.16_linux_amd64.tar.gz"
      sha256 "264589176401d7330b1f2c736ddf2bc21468a4286a2680cee5d2c7cc9457a9df"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.16", shell_output("#{bin}/gx --version")
  end
end
