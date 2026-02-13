class Lazyhue < Formula
  desc "TUI tool for managing Hue bridges"
  homepage "https://github.com/kluzzebass/lazyhue"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.2/lazyhue-x86_64-apple-darwin"
      sha256 "91d0fc0c0e16695f73373eb3e43a260eb86c1849f91a9164b8c447a5ee683681"
    end

    on_arm do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.2/lazyhue-aarch64-apple-darwin"
      sha256 "60057c63c0c423e9e8357068c89773b2309f1e8994d324528deba3abb793e0c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.2/lazyhue-x86_64-unknown-linux-musl"
      sha256 "73de7102b9442b37054a3dbce95bda700a7f3bc6d34fbb7bd4dadf2822abb389"
    end

    on_arm do
      url "https://github.com/kluzzebass/lazyhue/releases/download/v0.3.2/lazyhue-aarch64-unknown-linux-musl"
      sha256 "a1aa6e3dc3ccbb5f47950b3e6ec26325c1c48856fa5e4b768622e48d720a08ed"
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
