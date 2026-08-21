# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.2/pw_0.5.2_darwin_arm64.tar.gz"
      sha256 "4c85619cec5f8c6c180404f5d74de39119a787486b8515ca5aa4c1c96cd74811"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.2/pw_0.5.2_darwin_amd64.tar.gz"
      sha256 "9e13459ccf1ac1d320b74f9f33ebcb740295372e309793d8ec4bb5f3e9194a1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.2/pw_0.5.2_linux_arm64.tar.gz"
      sha256 "c9fa56cef228768224ca6bff3edbb9bd1a4e866052005b17194927ea68aece02"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.2/pw_0.5.2_linux_amd64.tar.gz"
      sha256 "5ae5de3628b8bb2612f6c85e241c70876dbab0b3d6a9e5700b9709c46758106a"
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
