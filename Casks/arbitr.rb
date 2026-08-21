cask "arbitr" do
  version "0.0.7"
  sha256 "7ddc3b1b3820829a3700c6c498eb502a58ed44bfff2f864696bce54f1406890d"

  url "https://arbitr.bittavern.io/api/download/Arbitr-#{version}.zip"
  name "Arbitr"
  desc "Send commands to AI harnesses on your Mac from mobile clients"
  homepage "https://bittavern.io"

  livecheck do
    url "https://arbitr.bittavern.io/api/latest-release"
    strategy :json do |json|
      json["version"]
    end
  end

  # The app updates itself through its own update feed, so Homebrew
  # leaves upgrades to the app.
  auto_updates true
  depends_on macos: :tahoe

  app "Arbitr.app"
end
