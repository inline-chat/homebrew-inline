cask "inline" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.4.0"
  sha256 arm:          "7ec744c13d31ef35cb30a3403b5a8f7b46cf1638a5373f4a74b895a6be5d5003",
       intel:        "cd6e17bff144fdd9c981985b124a9a98efa53e85d642313711992ea0483f5026",
       arm64_linux:  "8c9a1608b415506172c7454a1bdc0e629c47f28409ab418ae7afe74504e9f941",
       x86_64_linux: "8e91aa6ba1364c751ba16c019e157c4317383e5cb773d5d5855392b338b4305c"

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
