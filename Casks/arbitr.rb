cask "arbitr" do
  version "0.0.21"
  sha256 "fa957cc0f5f928689794d7c3acf55f68a0336f14c5eb439ea1d3155188ebdbc9"

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
