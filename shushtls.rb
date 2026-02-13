class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.2.0/shushtls-darwin-amd64"
      sha256 "cb2b0982900a5d1180ee04fda1bd1e3bcafe01db77b1349f7e1cf09927b1b382"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.2.0/shushtls-darwin-arm64"
      sha256 "0ef5c63532ab571de6f2ac4173523197a225dad2abc186c609c55eefead278d6"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
