class Imux < Formula
  desc "Interactive multiplexer for running and controlling many commands at once"
  homepage "https://github.com/kluzzebass/imux"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.0/imux-darwin-amd64"
      sha256 "67160b812caed90ba621b95031de219760e2e48e711933dd4970538c646f7a2c"
    end

    on_arm do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.0/imux-darwin-arm64"
      sha256 "180891a223bcb04666ffed4aec39f2ddca60effd5537a71b69d307ea46884d03"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.0/imux-linux-amd64"
      sha256 "28f7929f747bc465326cbd39ede9ad65f80bfa7d839b89b944c9f12dcb2754f1"
    end

    on_arm do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.0/imux-linux-arm64"
      sha256 "8e96d524d0229de1d62478b90ac1fd810787fc784e5b792fe995fdc68683a2cf"
    end
  end

  def install
    bin.install Dir["imux-*"].first => "imux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imux --version")
  end
end
