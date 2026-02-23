class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.4.1"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.4.1/gastrolog-darwin-amd64"
      sha256 "926a70131c32ed9b88180dbcbd281ca7ac01e51328664bf6dc138270c2226c2e"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.4.1/gastrolog-darwin-arm64"
      sha256 "0ab651903816149fbf1b7a37d1c7178f5cff1f81c8bf98b71cc68c8bf2987d45"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.4.1/gastrolog-linux-amd64"
      sha256 "8a69e44aa2c137e530c2bac6d889133d905bab411e7ae6617908724d09d977e5"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.4.1/gastrolog-linux-arm64"
      sha256 "604f70e68b1a42afbf8697473dd2992b8e02f1f8543091916c722ae7df7aade1"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
