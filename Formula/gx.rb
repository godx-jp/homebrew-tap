class Gx < Formula
  desc "GoDX CLI: auth, context, service, admin and console lanes (godx-jp/id)"
  homepage "https://github.com/godx-jp/homebrew-tap"
  version "0.8.22"
  # The 0.9.x formulae shipped the retired umbrella CLI; this gx is a different program whose own
  # numbering is lower. version_scheme makes Homebrew treat 0.8.x as newer than an installed 0.9.x.
  version_scheme 1

  on_macos do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.22/gx_v0.8.22_darwin_arm64.tar.gz"
      sha256 "de3ae9f615e9ed8e76200d6b7efce772fdcb129f8183a4dd3a6b006b1ba49ce9"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.22/gx_v0.8.22_darwin_amd64.tar.gz"
      sha256 "38eb453aad186cbe7064eb99e949ec55952f02c6303c6fd64be6cf542389c6d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.22/gx_v0.8.22_linux_arm64.tar.gz"
      sha256 "419a72f53de6e212bddf230e42a873592dacd4a897b2b82717559884a619789c"
    end
    on_intel do
      url "https://github.com/godx-jp/homebrew-tap/releases/download/gx-v0.8.22/gx_v0.8.22_linux_amd64.tar.gz"
      sha256 "a9e0a5a1d87f7e99b13679bf07f68132f88d77ca129c69a129831b272f05fcf1"
    end
  end

  def install
    bin.install "gx"
  end

  test do
    assert_match "gx version 0.8.22", shell_output("#{bin}/gx --version")
  end
end
