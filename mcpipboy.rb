class Mcpipboy < Formula
  desc "MCP server providing AI agents with data generation and validation tools"
  homepage "https://github.com/kluzzebass/mcpipboy"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/mcpipboy/releases/download/v0.3.0/mcpipboy-darwin-amd64"
      sha256 "295c8eb0509c8677b557c7aaa28166009fe452882e403bbb577feb551455af74"
    end

    on_arm do
      url "https://github.com/kluzzebass/mcpipboy/releases/download/v0.3.0/mcpipboy-darwin-arm64"
      sha256 "2d0527aa17166b8befe451e8f2aedb0fa7905e977a808e0d92f0e3ff993c0947"
    end
  end

  def install
    bin.install Dir["mcpipboy-*"].first => "mcpipboy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpipboy --version")
  end
end
