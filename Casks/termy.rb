cask "termy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.67"
  sha256 arm:   "ee8c3335b769ce994fa3e990c5270ef570ae002df843b2a8a0e16f36c9f3baf8",
         intel: "cb138907a520723a009bdc4c4084e23bd6b9d6e61921467271eb6de982d12e05"

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
