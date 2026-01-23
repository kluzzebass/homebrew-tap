class Mcpipboy < Formula
  desc "MCP server providing AI agents with data generation and validation tools"
  homepage "https://github.com/kluzzebass/mcpipboy"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/mcpipboy/releases/download/v0.4.0/mcpipboy-darwin-amd64"
      sha256 "d3c0eb217b04bafb508fb6990b7bf143d46cf749472a777b8751a75431e242b0"
    end

    on_arm do
      url "https://github.com/kluzzebass/mcpipboy/releases/download/v0.4.0/mcpipboy-darwin-arm64"
      sha256 "f62dbe9f475c223057c4b64eba3164377b142eb55628de1f56039edaeda7b5ab"
    end
  end

  def install
    bin.install Dir["mcpipboy-*"].first => "mcpipboy"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcpipboy --version")
  end
end
