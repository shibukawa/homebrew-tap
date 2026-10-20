# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.12/pw_0.5.12_darwin_arm64.tar.gz"
      sha256 "e8c4c10a1ca0b0d03f5ce65fc16cfabb7e46a3393ccc3c9a943c5b5bd0315410"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.12/pw_0.5.12_darwin_amd64.tar.gz"
      sha256 "d46d009539d2a09aeb6b4b9de5da1883efce0383bbeef5ffc3968d16e60401a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.12/pw_0.5.12_linux_arm64.tar.gz"
      sha256 "ae2471dcd0e4e19be61cb2aec223c7080683baa780bea5c28392c441f28df090"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.12/pw_0.5.12_linux_amd64.tar.gz"
      sha256 "c685b8e66a1689c859e6009110b21f9a4c798888ff997eee223babc45d8f37af"
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
