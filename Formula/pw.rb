# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.1/pw_0.5.1_darwin_arm64.tar.gz"
      sha256 "d8f980430fcdfd08e903dd2feb6a031e4f04d6658c0d83b0b883711234cbede8"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.1/pw_0.5.1_darwin_amd64.tar.gz"
      sha256 "043ca245a62dbf392e95b5416e7811083c2ac3c02bb861fa49dcf19922c27a8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.1/pw_0.5.1_linux_arm64.tar.gz"
      sha256 "68c64b0e4a92d10dc589cc3ad0634783b0f4d7ed7df96f0987146495a9026bbf"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.1/pw_0.5.1_linux_amd64.tar.gz"
      sha256 "b74a2bca8918f1fd47e99be744f2cbf5c0a8f5a6a948d4221bfd36bd159171e8"
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
