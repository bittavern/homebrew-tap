cask "arbitr" do
  version "0.0.13"
  sha256 "2d3ba2c3f5342ee6e091eece7c00f7cc8511e8a5508331b11a0bfd39d569a712"

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
