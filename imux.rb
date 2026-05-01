class Imux < Formula
  desc "Interactive multiplexer for running and controlling many commands at once"
  homepage "https://github.com/kluzzebass/imux"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.3/imux-darwin-amd64"
      sha256 "f8fce7cbdf9ea7a107707cc497c0252738dda08ff16e0cc9b6b753018d0debbe"
    end

    on_arm do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.3/imux-darwin-arm64"
      sha256 "4470c686042329e7c41858a844594e7da9fb1d583cabeafbe18ad4194ef67a40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.3/imux-linux-amd64"
      sha256 "509cb90f67961016e6f3e53ed0d9bcedf75a0d483231a9598f1961ea2bcfb5a5"
    end

    on_arm do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.3/imux-linux-arm64"
      sha256 "95cd520c55913879911ee33719843fe4f0f9e54fbfced67d4d7ceb22731084cb"
    end
  end

  def install
    bin.install Dir["imux-*"].first => "imux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imux --version")
  end
end
