cask "inline" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.3.7"
  sha256 arm:          "d233bfcac8d333ea0a7f911388f496116be145e326527b18f5265b138e00adc6",
       intel:        "9783a5e31c14e99e1a7ddc72c7780504140dbbcc5635ed7581a939ceaa707108",
       arm64_linux:  "935028d457ce4145cf437042cde8d4dacc4471e086bdb43218aa99b02d66491d",
       x86_64_linux: "8a9b0fc4bd8d7ed8caef21280636e77481c35bca8ad65e82999819d58b05b17e"

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
