class Gx < Formula
  desc "CLI hợp nhất của godx (auth / service / admin)"
  homepage "https://github.com/godx-jp/godx-umbrella/tree/main/cli/gx"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.0/gx_v0.6.0_darwin_arm64.tar.gz"
      sha256 "c6257af627f5f83a532873e1e0df8f7ba63c27919ec190d1ac8c9422c340fe70"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.0/gx_v0.6.0_darwin_amd64.tar.gz"
      sha256 "3d54f5af4210384cf9ec057200646d68081cca94149737294a75eaddf97535a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.0/gx_v0.6.0_linux_arm64.tar.gz"
      sha256 "b7f9ae8da0ef27c512a02fa219ba80fc8ce86b545fae9c37c17238001fb66e80"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.6.0/gx_v0.6.0_linux_amd64.tar.gz"
      sha256 "e2272f776f03c77794ec1925236ccad3531f0ce7e7229a6ac17e2a4ca75686b9"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx v0.6.0", shell_output("#{bin}/gx version")
  end
end
