class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.4.0/shushtls-darwin-amd64"
      sha256 "077cd9cc663298cc7ce21faeb5f1f75fd030f08c408633cbae031c95119f201e"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.4.0/shushtls-darwin-arm64"
      sha256 "3b9fdc1f9e0bd4614c5509b7fd5c9da6df54bcdc10ae7366136f6c97e8148f55"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.4.0/shushtls-linux-amd64"
      sha256 "2dd1622465ed64feb2263b4eb60cb34f0a563e9285428cc4a8734467d2e53a34"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.4.0/shushtls-linux-arm64"
      sha256 "6f95ea2930012a86b410d2809d8a860ea24f64839baf115cf558c9a6bad75234"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
