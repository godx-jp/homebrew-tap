class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.18"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.18/gx_v0.8.18_darwin_arm64.tar.gz"
      sha256 "fa2022db04070814f78a0f58b0921dc9159fea99f148bcbc68358094faec7bf2"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.18/gx_v0.8.18_darwin_amd64.tar.gz"
      sha256 "ac8ad0e23fcb718580871249d187d1911de00ff49d933dce12a84fc245125592"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.18/gx_v0.8.18_linux_arm64.tar.gz"
      sha256 "7c225b4efa851261fbb30afb636b69c5618d57a133d4de23ca58d772d18311c9"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.18/gx_v0.8.18_linux_amd64.tar.gz"
      sha256 "bdcdc5f7018851cc4a14ff4f64d4fb0d1363528b4c0f765366357ea553516353"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.18", shell_output("#{bin}/gx --version")
  end
end
