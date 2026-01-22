cask "transmissioner" do
  version "0.4.3,4"
  sha256 "52e1f171f055d348efcb8b9e94cec8d322b442dbd88c2fe592667da64859ee96"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.4.3-4.zip"
  name "Transmissioner"
  desc "macOS menu bar client for remote controlling Transmission servers"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
