# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.15/pw_0.5.15_darwin_arm64.tar.gz"
      sha256 "033a0af917969099d5bef25bc0d204e9b55708011cf24b69050c9dd8e9183d9d"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.15/pw_0.5.15_darwin_amd64.tar.gz"
      sha256 "20674ace698d81800ae3f49c043637a143a88f2d59ee333c42983ec8209bca7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.15/pw_0.5.15_linux_arm64.tar.gz"
      sha256 "022815d1f5ed9e55be2049ef5e870797c8fe9ebd348b18b2d81fcea49486cd99"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.15/pw_0.5.15_linux_amd64.tar.gz"
      sha256 "146ce4c8afc620a6e15f7a40f473cad1c1dcc494e4d7eddf5e1a7469adacc0cb"
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
