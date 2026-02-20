cask "transmissioner" do
  version "0.5.2,4"
  sha256 "d1f37da6044dec913eb3c9e464c0abee3a422da1d69b02bbff50aca1f9e7d4b7"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.5.2-4.zip"
  name "Transmissioner"
  desc "macOS menu bar client for remote controlling Transmission servers"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
