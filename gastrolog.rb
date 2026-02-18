class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.0.3"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.3/gastrolog-darwin-amd64"
      sha256 "fcfb70c705d60a7ac277013409ddf1940d808a0abc98ef8ea6145dd61c0e293a"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.3/gastrolog-darwin-arm64"
      sha256 "4e94c23fe1da96e37f08cd06d87b672c00969270ca6a2987a344122771facd52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.3/gastrolog-linux-amd64"
      sha256 "a401cbb6d60183db510291ccfa93dcbe7240d4111d6c111cba9aac31d5d1601f"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.3/gastrolog-linux-arm64"
      sha256 "235e6fc406dea04a18b72ed12fcd6e19a23bce75ef8f6981dfd99b0d80b4375f"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
