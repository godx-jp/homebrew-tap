class Gx < Formula
  desc "CLI hợp nhất của godx (auth / service / admin)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.1.0/gx_v0.1.0_darwin_arm64.tar.gz"
      sha256 "2133ca34477e236d5d4b9de616da12c002c94f025ac98f551629faad0c514510"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.1.0/gx_v0.1.0_darwin_amd64.tar.gz"
      sha256 "5adde2734375e013a74cba753c0f628b303eacd5c54be91c27f35cc27827a79b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.1.0/gx_v0.1.0_linux_arm64.tar.gz"
      sha256 "80513254f570c3e4911d341e77306dff8a9b71e076027a1479d1965f989a9559"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.1.0/gx_v0.1.0_linux_amd64.tar.gz"
      sha256 "61628db38bb5b0b6401bc2c9df8dae4e25644f5a83104f36c5038b91d5b35bd5"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx v0.1.0", shell_output("#{bin}/gx version")
  end
end
