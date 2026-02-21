class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.2/gastrolog-darwin-amd64"
      sha256 "20cf1624ae28f3c5d829d67172cb67710eadcda7c777f334910d1c01f9326251"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.2/gastrolog-darwin-arm64"
      sha256 "19e0cc76bfa145398b98c262079e03346f5724e811cd3b3ba7ad45df1f78ac6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.2/gastrolog-linux-amd64"
      sha256 "543cf6dc20c6ff4e740ac61b4d162b05fdd09aa4bf31ac4b8a603fb57d4ae12c"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.2.2/gastrolog-linux-arm64"
      sha256 "c4febed9d0aeb2a0a2e2480d37219462900b991a76c224b93610d065432fe081"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
