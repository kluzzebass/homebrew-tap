class Imux < Formula
  desc "Interactive multiplexer for running and controlling many commands at once"
  homepage "https://github.com/kluzzebass/imux"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.1/imux-darwin-amd64"
      sha256 "a03eb08665365c40a46edd72c5901e29b76167119b616d993d3f6b0266db7b9f"
    end

    on_arm do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.1/imux-darwin-arm64"
      sha256 "c04b0eb480d1affa4906a23205c8554a0f7c8b3eb2a4d759eb8d0a9d2b50b342"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.1/imux-linux-amd64"
      sha256 "64419a4f57a01740d8da607b4040ebc20116404f497dd80e12c596fe0662040a"
    end

    on_arm do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.1/imux-linux-arm64"
      sha256 "dd8df57ff865315baf2e95f8a2988cf722ec1561e86e8c633315998642b1861d"
    end
  end

  def install
    bin.install Dir["imux-*"].first => "imux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imux --version")
  end
end
