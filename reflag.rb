class Reflag < Formula
  desc "Translate command-line flags between different CLI tools"
  homepage "https://github.com/kluzzebass/reflag"
  url "https://github.com/kluzzebass/reflag/archive/refs/tags/v0.8.1.tar.gz"
  sha256 "2792f060c3d184a11a68c03c2789d87f4bd89500ef5437ee5772d9562a271d11"
  license "MIT"

  depends_on "go" => :build

  def install
    # Get version info from git
    commit = `git rev-parse --short HEAD 2>/dev/null`.strip
    commit = "none" if commit.empty?
    date = `git log -1 --format=%cI 2>/dev/null`.strip
    date = "unknown" if date.empty?

    # Build with version info embedded
    ldflags = "-s -w -X main.version=#{version} -X main.commit=#{commit} -X main.date=#{date}"
    system "go", "build", *std_go_args(ldflags: ldflags)
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reflag --version")

    # Test basic translation
    output = shell_output("#{bin}/reflag ls eza -la")
    assert_match "eza", output
  end
end
