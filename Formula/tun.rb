class Tun < Formula
  desc "Self-hosted tunnel CLI — forward local ports to *.tun.godx.jp"
  homepage "https://tun.godx.jp"
  version "2.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_arm64.tar.gz"
      sha256 "61b2c67a4610f46c5d1d425d628ca2d6e39ac360ebdc4f9bdedb67cf4fdc0fb8"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_darwin_amd64.tar.gz"
      sha256 "247a7b8e391ed8fb41faaf0e264b32a93d8795c0be15cde9bab6f2ce3d5512d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_arm64.tar.gz"
      sha256 "ccd5d05c0f440dc0c998ac83c8a760b096d1f830c2201f51ea2ca0f3452b1ed7"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/v#{version}/tun_#{version}_linux_amd64.tar.gz"
      sha256 "0e5fc0b44b3ebe65a4f801bea15e2c33fc958f90494bc4304b888f95feb8afd2"
    end
  end

  def install
    bin.install "tun"
  end

  test do
    assert_match "tun", shell_output("#{bin}/tun version")
  end
end
