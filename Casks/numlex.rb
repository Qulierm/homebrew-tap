cask "numlex" do
  version "4.8.2"
  sha256 "c0d1d118cf4ce487576b09d943150a76de9bc91f5ef91e5409f7a59baae46500"

  url "https://github.com/Qulierm/Numlex/releases/download/4.8.2/Numlex-4.8.2-macOS-arm64.dmg"
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
