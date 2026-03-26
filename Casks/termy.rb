cask "termy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.71"
  sha256 arm:   "586aa58398f0d2778a98c50592c22d8560fc18dc725754c1e2f3b244d459fbe1",
         intel: "1a2c75eb76663d04982d4e9497d7e04461fc8a79e3152935948b70f0e889b8ec"

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
