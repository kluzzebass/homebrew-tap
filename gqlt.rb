class Gqlt < Formula
  desc "A minimal, composable command-line client for GraphQL operations"
  homepage "https://github.com/kluzzebass/gqlt"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gqlt/releases/download/v0.10.1/gqlt-darwin-amd64"
      sha256 "de8e6138c63dd1fddcf296db9b1e9ed48b527a9b69dafe76f8883d2d31ba38c0"
    end

    on_arm do
      url "https://github.com/kluzzebass/gqlt/releases/download/v0.10.1/gqlt-darwin-arm64"
      sha256 "1391bba61b946416e38b2a01f3d3fe1fe833589daa1348d404d510610eff8c71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gqlt/releases/download/v0.10.1/gqlt-linux-amd64"
      sha256 "b1fb85c6ccae16e4d7d022ecfe2e704be37b40437b3bee0ef8804d197a8d5985"
    end

    on_arm do
      url "https://github.com/kluzzebass/gqlt/releases/download/v0.10.1/gqlt-linux-arm64"
      sha256 "a5ae8a5559fa1254c83c8681b8c773a64aa95e67097c2f7dbca500a9e00c0f36"
    end
  end

  def install
    bin.install Dir["gqlt-*"].first => "gqlt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gqlt --version")
  end
end
