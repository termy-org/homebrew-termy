cask "termy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.73"
  sha256 arm:   "8449a0eef45d719f107263f2ddebf7862d868c2a5222c320bccd184a56bb8e0e",
         intel: "e12129d27ee6dce14faa31a000b9f66ad9d3bea0ba71c30225006123e7694f31"

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
