# Rendered by .github/homebrew/render-formula.sh into shibukawa/homebrew-tap.
# Edit this template, not the copy in the tap.
class Pw < Formula
  desc "CLI for the Popcorn Web web application framework"
  homepage "https://github.com/shibukawa/popcornweb"
  version "0.5.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.9/pw_0.5.9_darwin_arm64.tar.gz"
      sha256 "cdd41ca6b8d3ba127ab1a9dfe18323a955185a9bc0ee6497d834c26304bbf21a"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.9/pw_0.5.9_darwin_amd64.tar.gz"
      sha256 "2a61f5bd46b0d282861e2737e1e04bfae415d397fbefa27b0631ae5720562a20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.9/pw_0.5.9_linux_arm64.tar.gz"
      sha256 "9695a19caa6102905dad173f91abecb3e0571bacb4b8afc3e46af5bb36033c7b"
    end
    on_intel do
      url "https://github.com/shibukawa/popcornweb/releases/download/v0.5.9/pw_0.5.9_linux_amd64.tar.gz"
      sha256 "f9fbf56241f88e59bb5ea25af678c1f14fcc8abec5ad93774d4b88f423a20146"
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
