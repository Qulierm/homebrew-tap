cask "numlex" do
  version "4.9.2"
  sha256 "5b0061d496b016fd2cbe2b7fc7b9668f807d79bb5e5502cdc031c0bd7141162f"

  url "https://github.com/Qulierm/Numlex/releases/download/4.9.2/Numlex-4.9.2-macOS-arm64.dmg"
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
