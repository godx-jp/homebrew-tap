class Gx < Formula
  desc "CLI hợp nhất của godx (auth / service / admin)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.1/gx_v0.6.1_darwin_arm64.tar.gz"
      sha256 "07d846846d3ef2a5f1fea69fc6ad3d8457096e2d3e8c2b8e791d642e0cbc4d82"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.1/gx_v0.6.1_darwin_amd64.tar.gz"
      sha256 "782d874a025c401af1baf17e7121733d693eaf2952f3ed707cbd2b9b766ed488"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.1/gx_v0.6.1_linux_arm64.tar.gz"
      sha256 "4c896060cf349aa828ddfe7c865e2ecfaa9fe01879f65145c226e2c9817d41da"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.1/gx_v0.6.1_linux_amd64.tar.gz"
      sha256 "e636bc51d21e77dbddf0ddff2e6677c6fcec2daf713ebbe8f8b1776c92c5c8d9"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx v0.6.1", shell_output("#{bin}/gx version")
  end
end
