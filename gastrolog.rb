class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.2/gastrolog-darwin-amd64"
      sha256 "d5359994637fa4ef97ff29d44aabf4737a373ff02803565a58ceb56299f8d424"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.2/gastrolog-darwin-arm64"
      sha256 "9f1a3940571eb135e8ebd4a088679720b5ac05fed5dc71f987efaecf5b14b0d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.2/gastrolog-linux-amd64"
      sha256 "95b4652d6e2c029fd5f2fbd4b9b8377b2a1db672e8c80d09bbb1ed64f2f056d4"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.2/gastrolog-linux-arm64"
      sha256 "e4870a5172d6ea399d6b76058e33d431160545b1648d30deda56eda337e7d42c"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
