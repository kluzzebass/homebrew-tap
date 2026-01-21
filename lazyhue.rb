class Lazyhue < Formula
  desc "TUI tool for managing Hue bridges"
  homepage "https://github.com/kluzzebass/lazyhue"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.0/lazyhue-x86_64-apple-darwin"
      sha256 "1e1d2f2d0d826abae5bd7291bd67d38c0342fc521928c18f0df7faff1761e9de"
    end

    on_arm do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.0/lazyhue-aarch64-apple-darwin"
      sha256 "60fec0f84a6d3f42dc9f0b8270ef21dcfe798bbf6faa8ad781450e477c46a072"
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
