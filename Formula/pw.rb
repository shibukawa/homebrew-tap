# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.11/pw_0.5.11_darwin_arm64.tar.gz"
      sha256 "622585a1016c898d38a5df540f86361e6dff69ddc366b45ebe3a60d14c88344b"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.11/pw_0.5.11_darwin_amd64.tar.gz"
      sha256 "46fdb4e4e7b57fa5e8c13677c80e2c67c8ebcdb6f3d897077b3591ecf44ceee7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.11/pw_0.5.11_linux_arm64.tar.gz"
      sha256 "d9eb2b29dc32a4e2b61a32a50b5d3899e4259de64ad315a129ab1740863d6f6f"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.11/pw_0.5.11_linux_amd64.tar.gz"
      sha256 "21214ce79f86ebc639415dcd409e2f139a08260ccb98bd8f7064adf5a39bd426"
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
