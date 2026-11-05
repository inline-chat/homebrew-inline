cask "inline" do
  version "0.7.21"
  sha256 arm:          "8a87679546b623859699b5f9e80e0fa623847dfc82f66764e0e8c7b19ae518f3",
         arm64_linux:  "302b49423026a5d8592ccaa89d50a1125c0887d5589cf2889b06ab55509cebd1",
         x86_64_linux: "7994e475f9c3929aa8b068be4163b959986d70b704184a2fe6d5d80e885cbb29"

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
