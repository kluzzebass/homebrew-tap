class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.3.1/shushtls-darwin-amd64"
      sha256 "2ebcfcb0653c64de0a0e19c4a04c860307cf6d3503e410d061add51903045ebd"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.3.1/shushtls-darwin-arm64"
      sha256 "cefa59f04b616f93a4d53f4afca4707a9ee678c01d9d68d6b567aca45a8d0951"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.3.1/shushtls-linux-amd64"
      sha256 "b358ebb0b618be1bf34ad06d06d699afddec53256da94523d31c3a18096b0ff3"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.3.1/shushtls-linux-arm64"
      sha256 "8bc7b297e674dd6d6bd8b95db45df369744ba74bcf341d22506a8596269ac515"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
