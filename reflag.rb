class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.10.0/reflag-x86_64-apple-darwin"
      sha256 "5cba15f79dda0d5924cbbe49a17eb58b8040803ee5896434d10dc9fc4a251bd0"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.10.0/reflag-aarch64-apple-darwin"
      sha256 "952d2d58983cc08172536e8d04e86ef72773773cf7b1c34b4c78bce19fe2f7ed"
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
