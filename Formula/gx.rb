class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.20"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.20/gx_v0.8.20_darwin_arm64.tar.gz"
      sha256 "addea0b5a8b76b5ed616a3761f5169eb3072268a9fc14025dd132bcf6615fcf2"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.20/gx_v0.8.20_darwin_amd64.tar.gz"
      sha256 "38f16581f5c445d1575b32989c07500c392469549fb8d905c098706a99189428"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.20/gx_v0.8.20_linux_arm64.tar.gz"
      sha256 "6f06541ab748da40ef8030b31172c55be232ad043f87cf385dbfadc5529f58a0"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.20/gx_v0.8.20_linux_amd64.tar.gz"
      sha256 "73a431146ddbc992429f58f9178abc26193056e73700a36265ab2e8b97ba7d72"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.20", shell_output("#{bin}/gx --version")
  end
end
