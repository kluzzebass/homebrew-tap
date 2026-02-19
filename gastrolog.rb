class Gastrolog < Formula
  desc "Log aggregation service"
  homepage "https://github.com/kluzzebass/gastrolog"
  version "0.0.6"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.6/gastrolog-darwin-amd64"
      sha256 "28b9b498a11edc1614cdb135ec615825a782e6a66116f5be3b33b569d74285ac"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.6/gastrolog-darwin-arm64"
      sha256 "5afb87057d15910b1e499e6c961528c029ef2a1d7638342ade8eef91deeba230"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.6/gastrolog-linux-amd64"
      sha256 "93344f2f4649b5453dffc6f61151662733336ea6c27ddf203c78896960689321"
    end

    on_arm do
      url "https://github.com/kluzzebass/gastrolog/releases/download/v0.0.6/gastrolog-linux-arm64"
      sha256 "3216e3b1053f6e7b6493ca8f32aedeeba178fd24f23650b470720344968ea93f"
    end
  end

  def install
    bin.install Dir["gastrolog-*"].first => "gastrolog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gastrolog version")
  end
end
