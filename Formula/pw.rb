# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.0/pw_0.5.0_darwin_arm64.tar.gz"
      sha256 "0f6668d363298d4bb2e0f4e426b1e0006db5d70bbbb920ee56cf5e537a8366ea"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.0/pw_0.5.0_darwin_amd64.tar.gz"
      sha256 "b15e4e76b81fbc5a27281ab1aee7207c897c5b44ac8f61674532ea5783178894"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.0/pw_0.5.0_linux_arm64.tar.gz"
      sha256 "358782484a28ff87e92d3929d42692d95232a98f2cc22ea1e9d0ba3aa60698d7"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.0/pw_0.5.0_linux_amd64.tar.gz"
      sha256 "91a28b860f28585cc9bb8727396c58069e8a6216dd593bb545844e01e9a1950e"
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
