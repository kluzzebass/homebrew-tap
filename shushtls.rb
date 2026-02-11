class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.2/shushtls-darwin-amd64"
      sha256 "583f9d64b00d8e400bac5654180b17dfcd8e66005099ce2995dc9b3e524dfb79"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.1.2/shushtls-darwin-arm64"
      sha256 "06d20ceaf8072e954570541e4fc41d9aac1bc5ca5a5cab74880a0f68096ceb9d"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
