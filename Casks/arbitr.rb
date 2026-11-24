cask "arbitr" do
  version "0.0.24"
  sha256 "fd7c2ddce16d198c4da44fb8bf7fa8df90687334d270d2ba21c35749c015fd6a"

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
