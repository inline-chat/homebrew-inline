cask "inline" do
  version "0.7.25"
  sha256 arm:          "884ccfcd7b7b54f9b95b158174428f8924c92f7e104646c123f08fed7580ab4b",
         arm64_linux:  "009cafe2a760ea3f4c3bc21b16bf447776235fadb09441978a81b4e51bd0820d",
         x86_64_linux: "062f02228ce3a574858c495edd88c935134d883aa5995d419ff0a211c23095fe"

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
