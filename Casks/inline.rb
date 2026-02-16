cask "inline" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.3"
  sha256 arm: "7e520b6570d2be8cf3c9bdbec4d1470ab2821c2ad7c82a126272ad78228c14ee",
         intel: "e29bbfbb329fdc8c6f280822e720448e481d84166cbe00305a6bb22dc98e635e"

  url "https://github.com/inline-chat/inline/releases/download/cli-v#{version}/inline-cli-#{version}-#{arch}-apple-darwin.tar.gz"
  name "Inline CLI"
  desc "Inline command-line client"
  homepage "https://inline.chat"

  binary "inline"

  zap trash: "~/.local/share/inline"

  livecheck do
    url "https://github.com/inline-chat/inline/releases"
    regex(/^cli-v(\d+(?:\.\d+)+)$/i)
  end
end
