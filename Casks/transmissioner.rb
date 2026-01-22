cask "transmissioner" do
  version "0.4.1,4"
  sha256 "0cb10267bcef5394b782b4c1b288310425361f343d43ae903a4720f98e3d38a8"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.4.1-4.zip"
  name "Transmissioner"
  desc "Menu bar Transmission client for macOS"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
