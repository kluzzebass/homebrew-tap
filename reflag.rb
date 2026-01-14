class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.11.0/reflag-x86_64-apple-darwin"
      sha256 "7127de4a5fa957d815803fb9396c8b5010cfa4655c45875210ce96b4a7855f34"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.11.0/reflag-aarch64-apple-darwin"
      sha256 "a429f273a0464ff125671556e32a899b05cb8b6c8bd91d42b6c60a9ed65fc1a0"
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
