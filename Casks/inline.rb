cask "inline" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.3.4"
  sha256 arm:          "637375ab11ed18aec9cc38b0c0e3bd99f19a24c748ab28d3e121638ee59106bc",
         intel:        "e8cc3b8a266a936fa2e0e9f640de956566da43ced4d92c7c909f07723d06704e",
         arm64_linux:  "6625510a190ad8c7f2b0fee586f921884fbf5e37e4d42561179a351af946749d",
         x86_64_linux: "41907018391778ef8caa3b195bdf4b6421954c3f65c1d410524a71fa7b03fbbe"

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
