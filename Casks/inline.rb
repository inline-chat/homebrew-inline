cask "inline" do
  version "0.7.24"
  sha256 arm:          "5e8e3cd00069be028655268efbb561d943b279ca59968388e426c1744f8fc716",
         arm64_linux:  "6f5e4edd54b90f56a54a7a52411e4c6ef8afa92c1cc9e4335da6638ea958b686",
         x86_64_linux: "0bb94248ab4d98b764983f62c4cd2931bb5ba2f7919129ed07fd1ce31fe55c10"

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
