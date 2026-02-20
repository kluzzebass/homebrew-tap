class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.1/gastrolog-darwin-amd64"
      sha256 "cdb81cd82959e582d495a1faddea08cda5054559f70081cc7f2d580d305cfecb"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.1/gastrolog-darwin-arm64"
      sha256 "66703205623a4f8b66f0434bb7142de837822c59a5dd358647b4ee6c4fc5b888"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.1/gastrolog-linux-amd64"
      sha256 "7c3774633e646e1ef727ccb577dc5eebd952af6f11d982dd95fb736fbe201cb5"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.1/gastrolog-linux-arm64"
      sha256 "f27869085bfe9c001e3b5614f68aadd8bd096ccbe74a88b785c87d760d5b7cc3"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
