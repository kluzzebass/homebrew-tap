class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  version "0.13.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.13.2/reflag-x86_64-apple-darwin"
      sha256 "4c1ad941eb39fc6093a9cf9db5e38e33e227317a158f96d9a51797656b809c79"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.13.2/reflag-aarch64-apple-darwin"
      sha256 "5aca0adb3834e4d3c443b74df417fef296afdadfabbc7bc58895b909544f6ab7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.13.2/reflag-x86_64-unknown-linux-musl"
      sha256 "caad24700ff07c1f56930fc37719435c8bc7e5a4bc5d070e42f5948f59c39d17"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.13.2/reflag-aarch64-unknown-linux-musl"
      sha256 "8b44f3f4626f9aa3ae1b66fdf8dc801c57b3d57ee8db2f0a8447a97143148664"
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
