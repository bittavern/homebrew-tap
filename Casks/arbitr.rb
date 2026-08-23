cask "arbitr" do
  version "0.0.8"
  sha256 "0631f23213e28c8af8a352d8d3eae093d296602ff7c533b4fda982056da5db89"

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
  depends_on macos: :tahoe

  app "Arbitr.app"
end
