cask "numlex" do
  version "4.9.5"
  sha256 "47228bb2ce0e45be294b529a5b879df2b51d07a7d9c34ea898176729c48861b9"

  url "https://github.com/Qulierm/Numlex/releases/download/4.9.5/Numlex-4.9.5-macOS-arm64.dmg"
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
