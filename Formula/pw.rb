# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Wave web application framework"
  homepage "https://github.com/shibukawa/popcornwave"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornwave/releases/download/v1.0.0/pw_1.0.0_darwin_arm64.tar.gz"
      sha256 "b8aa560faf0995ef9147237814ffc82a17e3d4c0f13911ecb6e45fb8456f4c4d"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornwave/releases/download/v1.0.0/pw_1.0.0_darwin_amd64.tar.gz"
      sha256 "72df46fd8bc22043112155a3081eb1964f5eea2f5638ed19444217084ba88f3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornwave/releases/download/v1.0.0/pw_1.0.0_linux_arm64.tar.gz"
      sha256 "5c93b2633767f3e9d3aedb904fcecc009db1bbfbd17731efc6e614cc3d2553cf"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornwave/releases/download/v1.0.0/pw_1.0.0_linux_amd64.tar.gz"
      sha256 "dca16e9b4b8e8573e60cbf9f4e412cdba6d5724e0e78a197f9061fd036bc047e"
    end
  end

  livecheck do
    url "https://github.com/shibukawa/popcornwave.git"
    strategy :git
    regex(/^v(\d+(?:\.\d+)+)$/i)
  end

  def install
    bin.install "pw"
  end

  test do
    assert_match "pw #{version} ", shell_output("#{bin}/pw version")
    assert_match "Commands:", shell_output("#{bin}/pw help")
  end
end
