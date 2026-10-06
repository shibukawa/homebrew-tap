# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.10/pw_0.5.10_darwin_arm64.tar.gz"
      sha256 "b51dde4154f8d14e01a10e016fed67f44bee98ec9a25cf1ffbfac1f1a68f3563"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.10/pw_0.5.10_darwin_amd64.tar.gz"
      sha256 "856b15a99b9d9f9bd4d758b0b9918636edb61f42cf929c215357679c62ca70b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.10/pw_0.5.10_linux_arm64.tar.gz"
      sha256 "2f9aa0c4273510527a5efb50a1589157e2652e1b6cb2ebb4efcb4d997c197def"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.10/pw_0.5.10_linux_amd64.tar.gz"
      sha256 "cb8e5310675c877ae0f70f23924474bc610dc82c320f1709bd404e51d72ca880"
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
