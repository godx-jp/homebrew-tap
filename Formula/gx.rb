class Gx < Formula
  desc "CLI hợp nhất của godx (auth / service / admin)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.2/gx_v0.6.2_darwin_arm64.tar.gz"
      sha256 "26da6f9ef05e846b918b8ba87f7a7a80e0f60845c7914b0b59f4ece9f20a7e73"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.2/gx_v0.6.2_darwin_amd64.tar.gz"
      sha256 "a76f1a740d4a8cb79b438eae0eb2b9222e397a00a3a3f6c1a2099cfe58cd5693"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.2/gx_v0.6.2_linux_arm64.tar.gz"
      sha256 "3ae584d38d296803c2ef3b2118606490320f6b0a0696cd9a818b04ba2eaf97e1"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.2/gx_v0.6.2_linux_amd64.tar.gz"
      sha256 "edea624c3dca3390d93b6593368a7b0a827f574940118b547c73f054d71fad25"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx v0.6.2", shell_output("#{bin}/gx version")
  end
end
