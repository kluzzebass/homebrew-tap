class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.8.2/reflag-x86_64-apple-darwin"
      sha256 "503667c2fb33f4a9d64984fec36bc43e48f214b38492a49fa2d5a1cfa8004abd"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.8.2/reflag-aarch64-apple-darwin"
      sha256 "b67f0ebe7557bc383ed3a179ebf54864ccb57e2638124424095ba5eb058ffa1f"
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
