cask "numlex" do
  version "4.9.1"
  sha256 "cbf3dd31518a30a6d3e46829b612b71ec1edc5d5129c62ebbdb4943f832c38c0"

  url "https://github.com/Qulierm/Numlex/releases/download/4.9.1/Numlex-4.9.1-macOS-arm64.dmg"
  name "Numlex"
  desc "Notepad calculator with live math, units, currencies and dates"
  homepage "https://github.com/Qulierm/Numlex"

  livecheck do
    url "https://api.github.com/repos/Qulierm/Numlex/releases/latest"
    regex(/Numlex-(\d+(?:\.\d+)+)-macOS-arm64\.dmg/i)
  end

  # 4.8.0 is the first release that updates itself in-app (Sparkle), so
  # Homebrew must stop treating the app as version-managed.
  auto_updates true
  depends_on :macos

  app "Numlex.app"
end
