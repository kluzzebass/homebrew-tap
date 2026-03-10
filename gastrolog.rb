class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.7.1"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.7.1/gastrolog-darwin-amd64"
      sha256 "d17ff84227fd8d37d460d26bbd3e563555051bd2ba22041fdb5f92c4196dd626"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.7.1/gastrolog-darwin-arm64"
      sha256 "c87e0d56bea2e617eaadb1ff831c136e0d63e3615d5793a8535c9f7a868c1d0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.7.1/gastrolog-linux-amd64"
      sha256 "e2e5d4a00bab1185204c74302e2905fba3060d9ed12aed8565fcb328aa636dc0"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.7.1/gastrolog-linux-arm64"
      sha256 "e4bd6400000956f60d56dd9582f013444b1b5e4e6c59a0b57009ce7201a46bdd"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
