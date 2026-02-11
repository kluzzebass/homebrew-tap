class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.1/shushtls-darwin-amd64"
      sha256 "5e7044993761798de61f5bbf8f9d5769f99326296bf1d9e250f3d7115918654d"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.1/shushtls-darwin-arm64"
      sha256 "2c776e0d15670016fc3d802a0638d09e3ae0c320af57b67860d0526b97085faa"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
