# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.14/pw_0.5.14_darwin_arm64.tar.gz"
      sha256 "83091f3823a10452cb8e49b68479295939cace82d81794db6bf2f9bfb3f73358"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.14/pw_0.5.14_darwin_amd64.tar.gz"
      sha256 "48005c5304f70c4278b9d25c04037de526ed53a467dcae5ee5d141dda38d24b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.14/pw_0.5.14_linux_arm64.tar.gz"
      sha256 "59cf8936d4001cc865200e98e120422ea569b734b7f62bad2a704126d56e93ff"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.14/pw_0.5.14_linux_amd64.tar.gz"
      sha256 "1fd0f525bc7408344ea1f8b49ce218218ae13807b8e52cc8869dd8ea7c8962bc"
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
