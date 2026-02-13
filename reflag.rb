class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.13.1/reflag-x86_64-apple-darwin"
      sha256 "7129329d7a69da88264525969ee2c8170a6d5dbbca1a6cccdc6241d2006e2568"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.13.1/reflag-aarch64-apple-darwin"
      sha256 "327be64f45911e89a458aab6da03650738d11880870399e7faf050e96e32a805"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.13.1/reflag-x86_64-unknown-linux-musl"
      sha256 "9005e0f945be94e00bb3623113b76d733beb5efd173281472ad93d355dc61fa1"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.13.1/reflag-aarch64-unknown-linux-musl"
      sha256 "812387f093ef950c425212eb2c8da16c1cb2f251e01d1ab9e1b1a1f10cf49354"
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
