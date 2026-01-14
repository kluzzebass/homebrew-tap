class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.12.0/reflag-x86_64-apple-darwin"
      sha256 "c6cb9464573873d3b81a6dd120db2c9057172f20c12c1866a4157e23be5927bf"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.12.0/reflag-aarch64-apple-darwin"
      sha256 "804b023f7a7230711bfe18dc953a5894fff41a86df2fdea1d2a6fb686cdc8c48"
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
