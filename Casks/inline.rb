cask "inline" do
  version "0.7.19"
  sha256 arm:          "1d8d378ec982136abd384413666356ec3bfccef71d5c247bf12df58cac80a10a",
         arm64_linux:  "7a540a395e78d58c1c8d473b6908e7e247e3ad4317fcfcf7e360f820575ba25b",
         x86_64_linux: "4a9ae36a521477edf8ef28cdeb4e4979173f9e0300e78547b96097b89a1c47c7"

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
