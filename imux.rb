class Imux < Formula
  desc "Interactive multiplexer for running and controlling many commands at once"
  homepage "https://github.com/kluzzebass/imux"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.2/imux-darwin-amd64"
      sha256 "67e1b02ad283490d08af210010367ed68e6d892638605d640f4ee84f698e48c8"
    end

    on_arm do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.2/imux-darwin-arm64"
      sha256 "90413439ecb82fd7c363d93b4edb86dd43ce33b0e501b7e058128373df1134f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.2/imux-linux-amd64"
      sha256 "00462b7936df5e401ce560d242abdcaf76ff0be2ff0f2a792feaab54d680a3cd"
    end

    on_arm do
      url "https://github.com/kluzzebass/imux/releases/download/v0.1.2/imux-linux-arm64"
      sha256 "66d4d875a734fdaff17c2491ac2e395833d01546f083f8aebe8308768c6fff22"
    end
  end

  def install
    bin.install Dir["imux-*"].first => "imux"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imux --version")
  end
end
