cask "numlex" do
  version "4.9.3"
  sha256 "fc48cd3cab9cd00e5f53e19c32380f1255f5765f9f3a4b4e6ade6b4ad7a6f46a"

  url "https://github.com/Qulierm/Numlex/releases/download/4.9.3/Numlex-4.9.3-macOS-arm64.dmg"
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
