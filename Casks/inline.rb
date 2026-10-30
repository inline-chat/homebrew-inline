cask "inline" do
  version "0.7.18"
  sha256 arm:          "9a79667c73b58f67ba056b00ba9912e44a630e5d329206e43b495513dcc18bf4",
         arm64_linux:  "38b04cf575be4572af603bbc212ecb2ac3e04a46eb6e0f69a684b9bc200e357b",
         x86_64_linux: "105997632f5100940fb38c68a02169ee0caba86517c4e04a2efbabfb4d6967ea"

  on_macos do
    url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-aarch64-apple-darwin.tar.gz"

    depends_on arch: :arm64
  end
  on_linux do
    arch arm: "aarch64", intel: "x86_64"

    url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-#{arch}-unknown-linux-gnu.tar.gz"
  end

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
