class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.0/gastrolog-darwin-amd64"
      sha256 "026e7876f30bf8e8466f8c803dc716e5783bf32c8e4cbcbca279d8e35e6f6681"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.0/gastrolog-darwin-arm64"
      sha256 "457e0121540c699208f1b6f398ede0bd5a693d3f70215d83e6e04206a2dcfe1b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.0/gastrolog-linux-amd64"
      sha256 "d0fb717281a7a58f1e68ba34340b2a0abf84f01a82e9a7206f17349fa46ba67d"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.0/gastrolog-linux-arm64"
      sha256 "6e13b203f3ef99189ac552b749d12c36e434d7c81501554895c99e60f24a710e"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
