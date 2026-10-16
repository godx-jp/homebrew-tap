class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.26"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.26/gx_v0.8.26_darwin_arm64.tar.gz"
      sha256 "0f715d1ef8b31b6c5dac04098df4d2c9b50bb6d1c201dc3b2986da193dbfb5fd"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.26/gx_v0.8.26_darwin_amd64.tar.gz"
      sha256 "54080e090a280c01b9a449d3fee60acef30c4b38dd22102790ae5c70c187baaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.26/gx_v0.8.26_linux_arm64.tar.gz"
      sha256 "865bae51027526d21fdcb842900504d670bfbfd8c4b12f0bdb2dd233c0d20d4a"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.26/gx_v0.8.26_linux_amd64.tar.gz"
      sha256 "f8ed1fb67940c1c2f1ed6b177e960cf65a5fefa86aceb1adf762dab5d9f41471"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.26", shell_output("#{bin}/gx --version")
  end
end
