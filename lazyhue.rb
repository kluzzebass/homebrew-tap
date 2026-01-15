class Lazyhue < Formula
  desc "TUI tool for managing Hue bridges"
  homepage "https://github.com/kluzzebass/lazyhue"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.1.0/lazyhue-x86_64-apple-darwin"
      sha256 "c18e5b4b9eb3cd6002c0505300ec38fc29749c1853f15790b407cd953bd667cd"
    end

    on_arm do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.1.0/lazyhue-aarch64-apple-darwin"
      sha256 "a6c5a3937e35f97f0b9d0c6031c7ec124b6022deb8c4a468c37ac3853fcddb5a"
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
