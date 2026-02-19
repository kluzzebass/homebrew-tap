class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.0.4"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.4/gastrolog-darwin-amd64"
      sha256 "7f20fecb49646eb044e4560b45ca4c62a6df6fc36fa31f51a9827a351954f5a5"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.4/gastrolog-darwin-arm64"
      sha256 "ecdcb56fe247507e1eb114c4aab15cc234f0392dc858b70357f2d42b5414cc45"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.4/gastrolog-linux-amd64"
      sha256 "3655c4a36b3a8f055f2c3d9b5710ad124c4f35ec95afec997e3a6168e9721787"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.4/gastrolog-linux-arm64"
      sha256 "b190dc88dbf5db53b36d28a8cd52d3347934a4cfd5785b600db3772f0a649c8a"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
