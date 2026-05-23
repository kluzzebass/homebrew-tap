class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.2/shushtls-darwin-amd64"
      sha256 "d91e2a94799c420a74f10cc62ef6e1bf0dab607c79589d76d24e17f5c856e71c"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.2/shushtls-darwin-arm64"
      sha256 "302734fe4b3bb14e40ac1b06e9559f9629367e176ca9aa77ad278cbbd8ccbc48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.2/shushtls-linux-amd64"
      sha256 "d26a07b43579f5849920f43f1a503ae540b21a43d66fa84d0f8e2055b065c3e9"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.5.2/shushtls-linux-arm64"
      sha256 "44c75f546492f4a6cf66044513852ba70ccedce04a76f922e064bd931dbab118"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
