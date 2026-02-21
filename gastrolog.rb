class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.3.0"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.0/gastrolog-darwin-amd64"
      sha256 "8ccee0c741ba301590baa1fb50ee7907fffae3a707ac8d370729355254aae351"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.0/gastrolog-darwin-arm64"
      sha256 "bbff1fa9c9562ad5542065a882080bfba2723b30a6e384c9b696ab9be98a0ddd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.0/gastrolog-linux-amd64"
      sha256 "90e7bbda87cb43c3ab5dcfe91446f9c3cdcbeb9421558694cef417ec34a51371"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.3.0/gastrolog-linux-arm64"
      sha256 "f9d2a9db86779c73d05b872001ef60a03381e44e83787367f090cd13c29bd38f"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
