cask "transmissioner" do
  version "0.2.0,3"
  sha256 "bcd9b9aa4aa993c3dac46e33d298df9794c552c51e21841468b91629653b811b"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.2.0-3.zip"
  name "Transmissioner"
  desc "Menu bar Transmission client for macOS"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
