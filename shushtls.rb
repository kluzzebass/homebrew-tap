class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.4.1/shushtls-darwin-amd64"
      sha256 "a1849ba67c8ed232c71b2dbbc95fc8dc025e9a135177bdd44043c27cc8fb15ce"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.4.1/shushtls-darwin-arm64"
      sha256 "92042131860a0a8b8920d39e2a55c6de97ab8f52925dd65e10ea1991bac5191b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.4.1/shushtls-linux-amd64"
      sha256 "96730055bb7587890d010a6fded95e323f0d798f697317e10146981e1c49de3f"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.4.1/shushtls-linux-arm64"
      sha256 "d98edd1e10486d998291ab6eb550a3b9b9b2093096b2b936404f67fc70b57155"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
