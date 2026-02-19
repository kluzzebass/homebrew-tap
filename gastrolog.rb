class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.1/gastrolog-darwin-amd64"
      sha256 "1fac6ea6d6f1dfb38576a6e37e541cd96f25d49c6a25a7f4c2db712dca467d96"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.1/gastrolog-darwin-arm64"
      sha256 "215608e74d06a66b1d19097a605ea149e807e46fb7950f2a8f763f243fd8c274"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.1/gastrolog-linux-amd64"
      sha256 "d543548b77be09c576f1c88d486100ad3ea1bfca9622ffa4957242d3d11ef883"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.1.1/gastrolog-linux-arm64"
      sha256 "40b67a6ff3ee7527e2e38461ba77dc209b489ff3969b62d1b3cb7328c14130f0"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
