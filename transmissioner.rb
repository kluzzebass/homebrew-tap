cask "transmissioner" do
  version "0.1.0,1"
  sha256 "1b8d75550b04a56ec1fd5a03d2a31ee0a191d576b026ca91cb58f51287e721dd"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.1.0-1.zip"
  name "Transmissioner"
  desc "Menu bar Transmission client for macOS"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
