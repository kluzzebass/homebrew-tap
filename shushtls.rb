class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.2.1/shushtls-darwin-amd64"
      sha256 "096b8d4c8a65dda47e09c356f51ae2636d1c19eb5938592676941c25dd136fce"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.2.1/shushtls-darwin-arm64"
      sha256 "678d575f1faeef2234c48b861f619c6ed1a472930aba65941084f10b2fe375c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.2.1/shushtls-linux-amd64"
      sha256 "0c2d1b6c716c7b48d5df80cb9c53a1f77ca1bbb373350695491fd32bfbc51420"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.2.1/shushtls-linux-arm64"
      sha256 "5b7fcbb97bcd8a681ee5fc578a829750fe96b1ef2059b7440478ef13065eb2c6"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
