cask "inline" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.7.0"
  sha256 arm:          "6f3509ea95fc2c596abf251c086c5b7ec93473f2b16f914537910c6efd8346e3",
       intel:        "adac9a2d7eda8264ce53117a97e1abc49f783288a929cb5556e130b1c22aa40e",
       arm64_linux:  "332916ea171a88375e172ffa8d2aa9f6d0f07eddb37e2cd9f6bb85e1d466d74a",
       x86_64_linux: "0363a6e1a13bb53c1cd3d311a3c700f9c6d3d99b01c4725954f4893fde24b3a6"

  url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-#{arch}-#{os}.tar.gz",
      verified: "github.com/inline-chat/inline/"
  name "Inline CLI"
  desc "Command-line client for work chat"
  homepage "https://inline.chat/"

  livecheck do
    url "https://github.com/inline-chat/inline/releases"
    regex(/^cli-v(\d+(?:\.\d+)+)$/i)
  end

  binary "inline"

  zap trash: "~/.local/share/inline"
end
