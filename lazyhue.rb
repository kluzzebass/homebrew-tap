class Lazyhue < Formula
  desc "TUI tool for managing Hue bridges"
  homepage "https://github.com/kluzzebass/lazyhue"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.3/lazyhue-x86_64-apple-darwin"
      sha256 "dc2cb0cd4c04717d276cf85909d279892e3f0cd785719116d8a715eb3470d375"
    end

    on_arm do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.3/lazyhue-aarch64-apple-darwin"
      sha256 "73a0f138c08adf03211a8fb2f9dc7963af46639bf3732987f6fdd236c142375d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.3/lazyhue-x86_64-unknown-linux-musl"
      sha256 "5a2788b18040f6bcd92851299378987d75074cf910ef5a44c7fe249687cd4bf4"
    end

    on_arm do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.3/lazyhue-aarch64-unknown-linux-musl"
      sha256 "4ab567237e477252c3a9c401cc7568a0768f57a9a079ce1bb09c0a02eb57b5bf"
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
