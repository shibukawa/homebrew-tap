# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.16/pw_0.5.16_darwin_arm64.tar.gz"
      sha256 "41fa18a8c55e7398e3778d7eaf67a6370226f008407d73b75cecfb8923055ce6"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.16/pw_0.5.16_darwin_amd64.tar.gz"
      sha256 "cc78b263d893a9629780b6d3717956b7d9cf3c41f5662c98cd416c3ac09d3e0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.16/pw_0.5.16_linux_arm64.tar.gz"
      sha256 "e6c9f1e55874850da740f93f97e542a5f8407a4ab5c89dc1a116c92d0955f66c"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.16/pw_0.5.16_linux_amd64.tar.gz"
      sha256 "b59e2d1e70fa95e30757815ec7b021fc2caea59668e471a1d29ecce7258af027"
    end
  end

  livecheck do
    url "https://github.com/shibukawa/popcornweb.git"
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
