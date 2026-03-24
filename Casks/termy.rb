cask "termy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.69"
  sha256 arm:   "1e10e0f724976c455de57373087307c66363da92b93ae993b4123f44f0228317",
         intel: "53f014ea8ffd454ba1b9ce9e034e10b6cf774098144b50730666c79d99d74c41"

  url "https://github.com/termy-org/termy/releases/download/v#{version}/Termy-v#{version}-macos-#{arch}.dmg"
  name "Termy"
  desc "Minimal GPU-powered terminal written in Rust"
  homepage "https://termy.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Termy.app"
end
