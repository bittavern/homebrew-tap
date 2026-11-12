cask "arbitr" do
  version "0.0.22"
  sha256 "038157054bc4244b9f450086b2ead139312e4938b8f5ea37fb06bcc761abb638"

  url "https://arbitr.bittavern.io/api/download/Arbitr-#{version}.zip"
  name "Arbitr"
  desc "Single native Mac app for running all of your coding agents, and managing the code, tasks and infrastructure they touch"
  homepage "https://bittavern.io/arbitr"

  livecheck do
    url "https://arbitr.bittavern.io/api/latest-release"
    strategy :json do |json|
      json["version"]
    end
  end

  # The app updates itself through its own update feed, so Homebrew
  # leaves upgrades to the app.
  auto_updates true
  depends_on macos: :golden_gate
  depends_on arch: :arm64

  app "Arbitr.app"
end
