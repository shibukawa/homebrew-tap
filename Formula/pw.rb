# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.13/pw_0.5.13_darwin_arm64.tar.gz"
      sha256 "a0fb67bb0921fc5c88abd94f5f903d04074db79b4626faccd294b982d0fb0ade"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.13/pw_0.5.13_darwin_amd64.tar.gz"
      sha256 "af8227ea9fac6ec565f578960f8bb258f43a68484041f8592ccb5de616c566c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.13/pw_0.5.13_linux_arm64.tar.gz"
      sha256 "ea18c1f16873d40ef4b20569889e1a9f8ecde32261d5553a28c6213d12464bcd"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.13/pw_0.5.13_linux_amd64.tar.gz"
      sha256 "6983112849b616600d7cfa70f7ef3562d92ba3377613a740d9ddd26c8f7d1696"
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
