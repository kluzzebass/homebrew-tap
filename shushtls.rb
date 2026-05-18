class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.0/shushtls-darwin-amd64"
      sha256 "0036fe68ddbc597d4c18e5b2772b936acc05001ffeb0382c8734c7e21e35e953"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.0/shushtls-darwin-arm64"
      sha256 "965cb668f2347802436651f32719e4cda2b451eba57a55f089c7f769d1f5ddf9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.0/shushtls-linux-amd64"
      sha256 "e9b5b51b80162bd9f72efe4dd597182599b06d250236a7da8afbf0f393dd54e6"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.0/shushtls-linux-arm64"
      sha256 "1e526f4a98c491002b5353ed55ee8a0206a91a71049aaa72a40e09c2aca54696"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
