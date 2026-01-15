class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.13.0/reflag-x86_64-apple-darwin"
      sha256 "969e32c426cd5c2dbd589fc642dfa656dd15c1324410249c630542c861654060"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.13.0/reflag-aarch64-apple-darwin"
      sha256 "fbeb6e552707234c122b36a4a77f4720b5b878bcde2350e64f604097e63829b8"
    end
  end

  def install
    bin.install Dir["reflag-*"].first => "reflag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reflag --version")

    # Test basic translation
    output = shell_output("#{bin}/reflag ls eza -la")
    assert_match "eza", output
  end
end
