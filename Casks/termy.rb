cask "termy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.70"
  sha256 arm:   "af2a36b9033a5e7625c68dc82e43593873d8d57dab864e6308e4bebad8061a3d",
         intel: "aedf4c6d0b19164397baba6d86e1e514fa128538de70715c0f0c13a42a16080e"

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
