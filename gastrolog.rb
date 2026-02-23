class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.4.0"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.4.0/gastrolog-darwin-amd64"
      sha256 "ee208974eac9659ced8d7dd21923c66966a6d29c201c71e055026cc99ef4d70f"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.4.0/gastrolog-darwin-arm64"
      sha256 "95522d2c8a5ab3e651140e67e212cbcb4ebd79193dbe97d6f1e7afd57a0e8cb6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.4.0/gastrolog-linux-amd64"
      sha256 "8a072f7e9f7e2b3f5429a8d07d2f661bca70ac94a449f5dd4da4981453645949"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.4.0/gastrolog-linux-arm64"
      sha256 "8d61700ef257605289888eb7665879a5a65d2d49fbfcb71860c5cf6c96936d40"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
