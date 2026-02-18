class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.0.1"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.1/gastrolog-darwin-amd64"
      sha256 "98be97ea5130fc06ae1a03398a4de1e9d3aa4b6cd53903165d6103c2c1cca381"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.1/gastrolog-darwin-arm64"
      sha256 "41c30526c93cdf4fe5181ce0d0ea0b7383d1d37ee5866583712f6a368961b6af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.1/gastrolog-linux-amd64"
      sha256 "6db82805bdf44227ce23abfad8430849291b1d9c314271ad646861babe3dfb8c"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.1/gastrolog-linux-arm64"
      sha256 "98446d6f2c2f7fe7717f8f172d991fc1954bf19a50d2f95614020f4d6ac9e2c6"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
