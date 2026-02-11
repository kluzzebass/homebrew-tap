class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.0/shushtls-darwin-amd64"
      sha256 "399dc0fc8d17cd315835638176dd36d025f5824f0bbd42a98b8d48e0d59dbe21"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.0/shushtls-darwin-arm64"
      sha256 "90ae42ea5c60727770bb7eaea7e2b18ac2c87dda0c0be1d79cad1d123fc929d5"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
