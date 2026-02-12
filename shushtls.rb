class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.6/shushtls-darwin-amd64"
      sha256 "f36aba71c60c857258d41065d89eb5b44fd4c8df56d1ed078ab97786b236ad63"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.6/shushtls-darwin-arm64"
      sha256 "2de2630d68c8f8efe7b1198497738c8ac6ace8f981865fa7f2f14a1c330558d5"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
