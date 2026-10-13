cask "inline" do
  version "0.7.17"
  name "Inline CLI"
  desc "Command-line client for work chat"
  homepage "https://inline.chat/"

  on_macos do
    depends_on arch: :arm64
    sha256 "bfe3427921ef72e08ccf70b0f5db55a14efaf4354a644b7cd1442e1fb13e9393"
    url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-aarch64-apple-darwin.tar.gz",
        verified: "github.com/inline-chat/inline/"
  end

  on_linux do
    arch arm: "aarch64", intel: "x86_64"
    sha256 arm64_linux:  "2d6d4a14c855b8da9a8fa60f7ba5634ccdb40458422b3c21c3d1ed09e1d40ab1",
           x86_64_linux: "4acab9e0cae44cd65cf7fc161d126f48394d13d850c3fc60d1c4f1ab51dfb5c9"
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
