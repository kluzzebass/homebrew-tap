class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.2.3"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.3/gastrolog-darwin-amd64"
      sha256 "5515d3539781ceaa60d12965911f2a30c4d9d41e17ca49d4721cdaa8022891b8"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.3/gastrolog-darwin-arm64"
      sha256 "094d94548476a9b388fd906328236d071a0a5d46755f974cffbbbc28d50edef7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.3/gastrolog-linux-amd64"
      sha256 "e8063dd27d3120bc80bf4735353045cd7f058b1a342d572f29b5b0ff55e6ae46"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.3/gastrolog-linux-arm64"
      sha256 "8a4e0f4510a1e8c38e09b03d30db3bf8e06909ed963c385b4eb9d31e4f84eff9"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
