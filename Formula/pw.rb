# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Wave web application framework"
  homepage "https://github.com/shibukawa/popcornwave"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornwave/releases/download/v0.1.0/pw_0.1.0_darwin_arm64.tar.gz"
      sha256 "5068ff0aed42f159b2630b84303d9f9747762d603b886d5e4ed7fc6359fd4012"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornwave/releases/download/v0.1.0/pw_0.1.0_darwin_amd64.tar.gz"
      sha256 "7bf5ad3c359c7a14d2a19ee2a40d8146bbb894be71ba2fe3267bc02358f3fca6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornwave/releases/download/v0.1.0/pw_0.1.0_linux_arm64.tar.gz"
      sha256 "e9429a49d3c938981808a662886559605705d9f7bb673efb3fbbb0afb66df1ad"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornwave/releases/download/v0.1.0/pw_0.1.0_linux_amd64.tar.gz"
      sha256 "55af7dd50869b85bae6b1f3cd328e7157a63d3d2ac2c58b955a4dbc4af84733e"
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
