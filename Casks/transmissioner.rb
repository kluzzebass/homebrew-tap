cask "transmissioner" do
  version "0.4.4,4"
  sha256 "5c3845f92e1e6acaf81455c9b387c223fcbdf505957ce6f22c0b71e55eb026ad"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.4.4-4.zip"
  name "Transmissioner"
  desc "macOS menu bar client for remote controlling Transmission servers"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
