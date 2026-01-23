class Gqlt < Formula
  desc "A minimal, composable command-line client for GraphQL operations"
  homepage "https://github.com/kluzzebass/gqlt"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gqlt/releases/download/v0.10.0/gqlt-darwin-amd64"
      sha256 "90e8fa831d945e5a8858488d2ce25422155b47ce1e1c26ba2bb5c1e8996a9b7a"
    end

    on_arm do
      url "https://github.com/kluzzebass/gqlt/releases/download/v0.10.0/gqlt-darwin-arm64"
      sha256 "0c6fb2c797247fd2bff54a9cd2fe80a36aa7aedcd9645dd827e777ef3a8ae874"
    end
  end

  def install
    bin.install Dir["gqlt-*"].first => "gqlt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gqlt --version")
  end
end
