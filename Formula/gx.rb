class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.17"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.17/gx_v0.8.17_darwin_arm64.tar.gz"
      sha256 "fdbc4b017b053b5cdaabb9e787fe2e41b8e59b640b96ad25f9acd78fc0581ffb"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.17/gx_v0.8.17_darwin_amd64.tar.gz"
      sha256 "1639872a4993d168d2b9f12c306e77b9887ad4bfad88a13737a76968020cf256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.17/gx_v0.8.17_linux_arm64.tar.gz"
      sha256 "8e14edfa9784223e903580759411708e6769f75d655812d278c740e4875060e2"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.17/gx_v0.8.17_linux_amd64.tar.gz"
      sha256 "da96e5c73221bbb9b1bc23e7b9c66a23f56a124aa46f5ea25be8c660ec213d91"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.17", shell_output("#{bin}/gx --version")
  end
end
