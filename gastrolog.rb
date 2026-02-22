class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.3.2"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.2/gastrolog-darwin-amd64"
      sha256 "251864f1c725b0c8784173d2eb4d6d3e8b3918e366dd8b51819988d8d961eb31"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.2/gastrolog-darwin-arm64"
      sha256 "0b1689e4d037e68c7c2fbf0597eac1c87edfaa028f99a24e5893eade932c9a88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.2/gastrolog-linux-amd64"
      sha256 "d1773d1422598ea8bd8d0ef76391e6291622ccc48243328f6936eff436b034f9"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.2/gastrolog-linux-arm64"
      sha256 "e63e6b37ab5a6445ebd92998da22ad84f61263c48f280e1225cdda11bdb6e8f5"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
