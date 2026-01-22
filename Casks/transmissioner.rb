cask "transmissioner" do
  version "0.4.4,4"
  sha256 "b673078d63583bc8c0ad6b8b154a92439244547124e8f5b5b4fdd9f82e6257a0"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.4.4-4.zip"
  name "Transmissioner"
  desc "macOS menu bar client for remote controlling Transmission servers"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
