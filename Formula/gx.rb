class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.23"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.23/gx_v0.8.23_darwin_arm64.tar.gz"
      sha256 "1efeb076e929533fcf6b03fae5f72c9fa79ba865211526dbeb0bd97c0b3465a1"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.23/gx_v0.8.23_darwin_amd64.tar.gz"
      sha256 "1abf0c792d7059ac615ee57537442469c24bcdc8b51a3d774bc672e0da8dec9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.23/gx_v0.8.23_linux_arm64.tar.gz"
      sha256 "f85b18bf38458eb56430c3b4c8b5b89fbc87c6a15f7a5d15cead6e5ff7c645a3"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.23/gx_v0.8.23_linux_amd64.tar.gz"
      sha256 "ea2ee7d36e161742619a61b5538ce3289e91c63b1db453ed415652a08aae62eb"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.23", shell_output("#{bin}/gx --version")
  end
end
