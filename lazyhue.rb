class Lazyhue < Formula
  desc "TUI tool for managing Hue bridges"
  homepage "https://github.com/kluzzebass/lazyhue"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.2.0/lazyhue-x86_64-apple-darwin"
      sha256 "c1dad7551a094382c020521e73bfb94868992762349ec13d1f36e86e89e8a0da"
    end

    on_arm do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.2.0/lazyhue-aarch64-apple-darwin"
      sha256 "c6b3bcfab4dfd84aff209c62a2c1ce1b2f0565b783f924b75dcab3c236481b97"
    end
  end

  def install
    bin.install Dir["lazyhue-*"].first => "lazyhue"
  end

  test do
    output = shell_output("#{bin}/lazyhue -h")
    assert_match "debug-log", output
  end
end
