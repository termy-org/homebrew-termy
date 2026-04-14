cask "termy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.74"
  sha256 arm:   "3ef4ce1f8cc61310f9b5ec574c8200cd9f51b53e6c4584640f190797e4f0c21f",
         intel: "5b88f13df9d0a6e82827547355959330c52978ca71d72ff0996cf0959784593e"

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
