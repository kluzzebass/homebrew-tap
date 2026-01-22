cask "transmissioner" do
  version "0.4.2,4"
  sha256 "6acefdd2030e3742262caae2a019df7a1104e7c1a4f3e251bbe372236b135f8b"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.4.2-4.zip"
  name "Transmissioner"
  desc "macOS menu bar client for remote controlling Transmission servers"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
