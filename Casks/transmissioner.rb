cask "transmissioner" do
  version "0.3.0,4"
  sha256 "195e83fe28f055c2f4e206ef97517c227c06f158e4baf02d65b7665e5396f4ae"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.3.0-4.zip"
  name "Transmissioner"
  desc "Menu bar Transmission client for macOS"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
