cask "arbitr" do
  version "0.0.23"
  sha256 "3161ef673981870f345c06fe3f1046a7a4a0d9780dbbefb9694df916bccaf19b"

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
