class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.3/shushtls-darwin-amd64"
      sha256 "2d290f1069de090a1b6f1e92cdb51accdfb140857ec9082e05987c44eea57a5a"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.3/shushtls-darwin-arm64"
      sha256 "a3afdf161a386d79b579205c15767d2960d17e2d36e293e535405b5ee971b286"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
