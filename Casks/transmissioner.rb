cask "transmissioner" do
  version "0.4.0,4"
  sha256 "0cb8c85a2a86fbc1e981340f586f0c5f802c90712fba72b27b8365a123c80939"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.4.0-4.zip"
  name "Transmissioner"
  desc "Menu bar Transmission client for macOS"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
