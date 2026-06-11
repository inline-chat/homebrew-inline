cask "inline" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.3.5"
  sha256 arm:          "f1e354dd1c066db006168f0d9af40ad1eec1c71155d51691e788762cb4f168f5",
         intel:        "5d3b7232f4d5e5e8059157e9c01a4d45b22fd4368f307d0d92414641dc08f60c",
         arm64_linux:  "731a5989d41673196fa85417ce5617022011a22d29e1485c62acd0cb15d60f76",
         x86_64_linux: "49243d519c7cd2baf61c2db628a212826254cff2ca2d600f163ab8e36bd49bc1"

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
