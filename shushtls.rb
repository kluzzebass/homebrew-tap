class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.0.4/shushtls-darwin-amd64"
      sha256 "76194097f699543cde757e4d81aeaf059e50912db95eadcb5bf59a0d206537c2"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.0.4/shushtls-darwin-arm64"
      sha256 "58d3cce8487edfada74e83f3f289b98f21fccce82c2f93a24faa0dd1fd913f2e"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
