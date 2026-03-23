cask "termy" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.68"
  sha256 arm:   "61dfd92c871ca52028eb329d48c1c7b718f060fb21903a49a705eff9d73570a1",
         intel: "9a1580049bc9671769aca67a2dc2b1a764e1cb09841e7e1c277a72fc32d1e863"

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
