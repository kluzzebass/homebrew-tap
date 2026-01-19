class Lazyhue < Formula
  desc "TUI tool for managing Hue bridges"
  homepage "https://github.com/kluzzebass/lazyhue"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.2.1/lazyhue-x86_64-apple-darwin"
      sha256 "5b477955c2bfbbe633faa35f156a346002f1692926c82363bf66481a08e5bd51"
    end

    on_arm do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.2.1/lazyhue-aarch64-apple-darwin"
      sha256 "8cf43e231489a4fc3a58a51f87edad376144e8b842fbb2043b2fd6230a956be6"
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
