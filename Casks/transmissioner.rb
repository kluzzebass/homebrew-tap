cask "transmissioner" do
  version "0.4.4,4"
  sha256 "e05a4a7faa51f70278508aa3acc4a5e41b4558b9dc452f25377eb70df2ddc417"

  url "https://github.com/kluzzebass/transmissioner/releases/download/v#{version.before_comma}/Transmissioner-0.4.4-4.zip"
  name "Transmissioner"
  desc "macOS menu bar client for remote controlling Transmission servers"
  homepage "https://github.com/kluzzebass/transmissioner"

  app "Transmissioner.app"
end
