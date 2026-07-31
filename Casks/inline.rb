cask "inline" do
  version "0.7.0"
  name "Inline CLI"
  desc "Command-line client for work chat"
  homepage "https://inline.chat/"

  on_macos do
    depends_on arch: :arm64
    sha256 "6f3509ea95fc2c596abf251c086c5b7ec93473f2b16f914537910c6efd8346e3"
    url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-aarch64-apple-darwin.tar.gz",
        verified: "github.com/inline-chat/inline/"
  end

  on_linux do
    arch arm: "aarch64", intel: "x86_64"
    sha256 arm:   "332916ea171a88375e172ffa8d2aa9f6d0f07eddb37e2cd9f6bb85e1d466d74a",
           intel: "0363a6e1a13bb53c1cd3d311a3c700f9c6d3d99b01c4725954f4893fde24b3a6"
    url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-#{arch}-unknown-linux-gnu.tar.gz",
        verified: "github.com/inline-chat/inline/"
  end

  livecheck do
    url "https://github.com/inline-chat/inline/releases"
    regex(/^cli-v(\d+(?:\.\d+)+)$/i)
  end

  binary "inline"

  zap trash: "~/.local/share/inline"
end
