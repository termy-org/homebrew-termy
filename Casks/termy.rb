cask "termy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.72"
  sha256 arm:   "1501b3d750f5830813b243f7a183ff92bafd738325b5c6654061b51763db674a",
         intel: "8e7077054d08877f212b7c9a0404d936feef890086847641b0b1e8568b43ee22"

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
