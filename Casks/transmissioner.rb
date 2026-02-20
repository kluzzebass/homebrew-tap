cask "transmissioner" do
  version "0.4.4,4"
  sha256 "432a1e69142e3e6779f4c6f339bea4be721c7e701771f877bb96544f2e34ef13"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.4.4-4.zip"
  name "Transmissioner"
  desc "macOS menu bar client for remote controlling Transmission servers"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
