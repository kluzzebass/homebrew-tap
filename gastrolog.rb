class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.6.0"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.6.0/gastrolog-darwin-amd64"
      sha256 "9631e12cf31db6670d2670b25db4b8e1f56d07d5a0bc236ccd12dadc1e7fd95c"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.6.0/gastrolog-darwin-arm64"
      sha256 "f590eb7af9c24c604d0bf7af859b8c37c9ab8fb5734270e7615cdd7d473be69e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.6.0/gastrolog-linux-amd64"
      sha256 "07d1659b1ab072d4c7e5ebc4b6972a0b62415312400bba8dea314918f6b80275"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.6.0/gastrolog-linux-arm64"
      sha256 "ff0b145963f6accf071363823b1dc1bd0698c1a804a389514b6a8344bbc481bf"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
