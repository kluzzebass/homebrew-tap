class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.1/shushtls-darwin-amd64"
      sha256 "f7d334a254982f08edf4e32ca3c68fd4873781fcbb8b505eb6baa5b4e9aa9629"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.1/shushtls-darwin-arm64"
      sha256 "d5248cadf4846933a9c447f816d25aea2e7deead92a178e7dfb8d4a2af86b5ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.1/shushtls-linux-amd64"
      sha256 "2943cb6f1e866a0888f788a49142e83ff3e2130fd503be996ba8a4990f09d94d"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.1/shushtls-linux-arm64"
      sha256 "5dc74e86dcd25c7354d537b5fa21fb4a171df7128361a224e5fb7520f2372150"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
