class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.3/shushtls-darwin-amd64"
      sha256 "22953a60a89ce1e622d979dcf328da802d2b354ba28255c104540f2e3aa10c05"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.3/shushtls-darwin-arm64"
      sha256 "d040cc14ae7f3900d6494ca9e2aeb313501072c95563bfe2155d48fafdbb8647"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.3/shushtls-linux-amd64"
      sha256 "5f51cab63dd98788e083ca3a587debee02f546a88cbd554267d5f9ba2b374e1f"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.3/shushtls-linux-arm64"
      sha256 "5f1a684e2d80bb5a5cc2f42ac4a42bc954c95f220a3f339c630a8a1892a87235"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
