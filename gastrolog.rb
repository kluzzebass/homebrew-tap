class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.0.2"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.2/gastrolog-darwin-amd64"
      sha256 "9e833f9f759d234eabe8b270d3d530ad79255f84dcaf4a0a6bb71ac124974dc9"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.2/gastrolog-darwin-arm64"
      sha256 "d01252d55646d12127bb0857f6d6b404eecdc890051d11e90d6a0f08de6f9337"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.2/gastrolog-linux-amd64"
      sha256 "0100d7fe2d501fc819dd623f071f8e2fa398ddd1b5292ebbe141ade514b587fb"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.2/gastrolog-linux-arm64"
      sha256 "a1f68582ed2e09d046ff057f1ecfe5f9c3221045445d4b94fe37214e16761faf"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
