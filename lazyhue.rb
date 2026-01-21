class Lazyhue < Formula
  desc "TUI tool for managing Hue bridges"
  homepage "https://github.com/kluzzebass/lazyhue"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.1/lazyhue-x86_64-apple-darwin"
      sha256 "ca373f4be20cc3eb2dc190c4db88c229063ca6c83a502480c89fa8111bbe7d58"
    end

    on_arm do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.1/lazyhue-aarch64-apple-darwin"
      sha256 "daee8600092dab798c61d49fb5081a90a160a2bf5c14115c3b17669a10fa98a2"
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
