cask "inline" do
  version "0.7.20"
  sha256 arm:          "1cdc78ca8c8a1513044fe69aba6940681d9c0d8ca215edd2fe94eb063cd4a775",
         arm64_linux:  "588a96f4459b9c7042b9c2d1246856189eae4ab17caf6f29915abb17fac1cfa3",
         x86_64_linux: "daf752e5ff25715cc5780f511ebd70c023a4b462e367545ffd70a34815c37d39"

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
