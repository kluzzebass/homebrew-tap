class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.4/shushtls-darwin-amd64"
      sha256 "48dfdc5a15a32f53876ac5b59fc55d417e045e2634bfed306f505a8e4ba74a61"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.4/shushtls-darwin-arm64"
      sha256 "aca07d1e9c44ed223c00bc8afa0262faabebcb5d4f1d7dc4fc31780a8a5b88e4"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
