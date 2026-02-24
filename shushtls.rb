class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.3.0/shushtls-darwin-amd64"
      sha256 "267483e07870d18acb7bb787de371ed472b62091064202a23ddc1cd3663e22fb"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.3.0/shushtls-darwin-arm64"
      sha256 "a6ceb8b4c063c1f0bc08b24d53e08cbefae46bb283b6983c9af8e97a7469332b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.3.0/shushtls-linux-amd64"
      sha256 "c9ef89d21910e78b02ceafbbbcdb83ecf7001a088f843c1ff64de3fa5e4454ae"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.3.0/shushtls-linux-arm64"
      sha256 "b1d2662a84d401890f4cca539829cd3b180c6e190739633a562e758abdb518f3"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
