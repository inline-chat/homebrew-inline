cask "inline" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.4"
  sha256 arm: "637375ab11ed18aec9cc38b0c0e3bd99f19a24c748ab28d3e121638ee59106bc",
         intel: "e8cc3b8a266a936fa2e0e9f640de956566da43ced4d92c7c909f07723d06704e"

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
