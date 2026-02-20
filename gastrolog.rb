class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.0/gastrolog-darwin-amd64"
      sha256 "566f8620258d9d0d0177362b81294c65560ea86c4b8dc123895037e3aaa6aa27"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.0/gastrolog-darwin-arm64"
      sha256 "32ff88a17787cf2ceafde6627cb9f8ec332821d5f020d02b22441e1c78396620"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.0/gastrolog-linux-amd64"
      sha256 "378bcf3b9b449cb94b6fd2a889fda8425c5b71f617921faae89e21e367fd6074"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.0/gastrolog-linux-arm64"
      sha256 "8537c788df3c2be571017f6d998c3dc8fb1366b1fd123724e1fc9cf3374c4961"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
