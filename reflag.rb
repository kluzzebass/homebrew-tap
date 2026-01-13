class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  version "0.8.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.8.7/reflag-x86_64-apple-darwin"
      sha256 "ae7a42f831814244353dc6b92ccddd7719572a705b0dde02bff90cd578ca6aef"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.8.7/reflag-aarch64-apple-darwin"
      sha256 "a2d3c67bd071333d4bb57bf33e46500e3357c9145a88dc25a3b6fd47529954dd"
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
