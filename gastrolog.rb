class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.7.0"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.7.0/gastrolog-darwin-amd64"
      sha256 "0d43aec28f8347c77a122a37bd4e28fd9b8b2ddca805ffaf8ce16e21ea1999de"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.7.0/gastrolog-darwin-arm64"
      sha256 "6c1f8e8cc310b51795cdd515ff534efe79c57721f42b822fe2d5c31d341b7f71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.7.0/gastrolog-linux-amd64"
      sha256 "fd6c99cabd2a53d052fdaf248da4a5f70061541ec982c3af138ccf0844e0cb15"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.7.0/gastrolog-linux-arm64"
      sha256 "6b3656e673c71ac275835513b53c8eec9c2cc683706b78c6e80516f2fcd3571f"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
