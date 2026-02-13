class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.2.2/shushtls-darwin-amd64"
      sha256 "4d039d8ecb652759b8d2574fdf66be120bd4f55c6aaf80c6c23fdae1fa180602"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.2.2/shushtls-darwin-arm64"
      sha256 "6f53afeb46370521d23812f218b517ceb0c04186ca6651f085dbc5ee70ce31ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.2.2/shushtls-linux-amd64"
      sha256 "09808145ba1cf487f0e2b964766346f34a50d844c85b0250c8ae2492c43acbe1"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.2.2/shushtls-linux-arm64"
      sha256 "2ed771b484e0ad42b16ce437f3bf8bc2ac0fde221551fc9489f2864a5d09c9f7"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
