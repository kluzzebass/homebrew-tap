class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.3.1"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.1/gastrolog-darwin-amd64"
      sha256 "9afa13751345c797e59d105aede043c071687e77e5286d82f61e80558f78f8f4"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.1/gastrolog-darwin-arm64"
      sha256 "ec81b6ff09d2d492845bb2042549f805d8a7a9528ff59d5bc658f181fabeb3d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.1/gastrolog-linux-amd64"
      sha256 "d5be8fc90a63854b8ea8c5c262bda0804487261acf1bfb6524f2b75937563d7a"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.1/gastrolog-linux-arm64"
      sha256 "191d41a4c1a43db0e5ade06fb56537b641f3a038646f3f0118de82c4f605d5a0"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
