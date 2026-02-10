class Shushtls < Formula
  desc "HTTPS for your home network"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.0.3/shushtls-darwin-amd64"
      sha256 "e490eab862410a5f9c7cc26cd3ac867ab2a1e7ed21a4c6092feff3a41b5510b9"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.0.3/shushtls-darwin-arm64"
      sha256 "56badac863a25cd485e669b5a844a1dff7ec69151ce20160569532a5f4a77c1c"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
