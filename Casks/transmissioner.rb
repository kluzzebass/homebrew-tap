cask "transmissioner" do
  version "0.1.1,2"
  sha256 "ec2fc21ac67ad0f1d1e4232d40c56f0e8b5eda3e533671887d378ac97afb4e24"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.1.1-2.zip"
  name "Transmissioner"
  desc "Menu bar Transmission client for macOS"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
