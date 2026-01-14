class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.9.0/reflag-x86_64-apple-darwin"
      sha256 "86c86690e7313bc0961bf84e34448079b9852ccf76e05057c58ab5cd5d069954"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.9.0/reflag-aarch64-apple-darwin"
      sha256 "02bfc1cf1298039e27f350a68a70e26524db9cf855da9e789181a095f5181f04"
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
