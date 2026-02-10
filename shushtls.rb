class Shushtls < Formula
  desc "Local PKI: issue TLS certs for your services, install root CA on devices (home/lab)"
  homepage "https://github.com/kluzzebass/shushtls"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.0.5/shushtls-darwin-amd64"
      sha256 "bff05ff279eadf171bb0fd76ecd009b25163166171d5831e499afa553cbf97ff"
    end

    on_arm do
      url "https://github.com/kluzzebass/shushtls/releases/download/v0.0.5/shushtls-darwin-arm64"
      sha256 "c95ce94adfe7b35831e71d288d1a6075dadb7b6eff99e1e49cf010308dce827b"
    end
  end

  def install
    bin.install Dir["shushtls-*"].first => "shushtls"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shushtls --version")
  end
end
