class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.5/shushtls-darwin-amd64"
      sha256 "2bd6f05c90a0d7403113cf872e3cd574f05df07498eb17f645bea41aa5502d13"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.5/shushtls-darwin-arm64"
      sha256 "0b48d7288d899375ebd41f1c5c2fa7b105f684056500783add50cbcccf4aa8e6"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
