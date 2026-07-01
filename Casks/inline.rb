cask "inline" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.3.6"
  sha256 arm:          "fec9bc86542dca76d1977292cfcfd6eb32ba9d6ccb4cce849981445e3ce1ae97",
       intel:        "8067c35e13942bd2f88f39875bf6779577ba61871f50e02205cd54a32b7dc84a",
       arm64_linux:  "44c1aa002f0a02bbaf236c56d14a1141f99d2b90e3ce0aa953cd19d28efc5986",
       x86_64_linux: "3bcaa5a62986a643b91c2bcbc961317341c898c91b327fe886d4c50365850413"

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
