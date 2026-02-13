class Mcpipboy < Formula
  desc "MCP server providing AI agents with data generation and validation tools"
  homepage "https://github.com/kluzzebass/mcpipboy"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/mcpipboy/releases/download/v0.4.1/mcpipboy-darwin-amd64"
      sha256 "ce8d57affbe93a416fef095e6804ae5149fc1244b2396b5edd4307111d11da3c"
    end

    on_arm do
      url "https://github.com/kluzzebass/mcpipboy/releases/download/v0.4.1/mcpipboy-darwin-arm64"
      sha256 "a52ea42206888d6a18af2c2704d55c22584701de687dcbbd3d080c44ee71a2de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/mcpipboy/releases/download/v0.4.1/mcpipboy-linux-amd64"
      sha256 "c27b02bdde056178341d74763d1fe9616df270295a629bb5151e6bde4fc731cb"
    end

    on_arm do
      url "https://github.com/kluzzebass/mcpipboy/releases/download/v0.4.1/mcpipboy-linux-arm64"
      sha256 "08c3dc4e5a735f0d8570a6924b2562eb441f73b8096ac0df84ff11504f2bd26e"
    end
  end

  def install
    bin.install Dir["mcpipboy-*"].first => "mcpipboy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpipboy --version")
  end
end
