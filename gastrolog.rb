class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.5.0"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.5.0/gastrolog-darwin-amd64"
      sha256 "2e79b3425bf7abbdc32bae90b638408c938d9733b09d08cf0da04179a94ecd9b"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.5.0/gastrolog-darwin-arm64"
      sha256 "0acf400fc106c439695b3f3f369792f1c0a9930bea75c35c6c43ad1f454874b2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.5.0/gastrolog-linux-amd64"
      sha256 "0208fc1da286dd6dd4f17231c636f357c52480c7b0422aae57817e815d199966"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.5.0/gastrolog-linux-arm64"
      sha256 "7f6ab7ffb3ab290935526623cfe8611f47b7ac9fdc7f8718504d8e2f2243c29b"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
