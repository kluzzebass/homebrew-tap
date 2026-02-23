class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.14.0/reflag-x86_64-apple-darwin"
      sha256 "b17d54bb799e31ce7f013e976860655a2a95b6d5f6753e7135a59839f3e5bb73"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.14.0/reflag-aarch64-apple-darwin"
      sha256 "c49392283be7e31241aec951d08df6ed706da6272684dba0ef0885c17385caa1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.14.0/reflag-x86_64-unknown-linux-musl"
      sha256 "c3671c75db61a554068b8f7dba80244131626bbfe45373becb95545fcde7f4e5"
    end

    on_arm do
      url "https://github.com/kluzzebass/reflag/releases/download/v0.14.0/reflag-aarch64-unknown-linux-musl"
      sha256 "d81cae511eafbd07bdd974bb34dfa33213e424af52dafbd6c15815def95fa187"
    end
  end

  def install
    bin.install Dir["reflag-*"].first => "reflag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reflag --version")

    # Test basic translation
    output = shell_output("#{bin}/reflag ls eza -la")
    assert_match "eza", output
  end
end
