cask "numlex" do
  version "4.9.4"
  sha256 "bc4f6a9a6cf38df2eb9f712c56922d113a52591655028a898f7dee5a45d1febf"

  url "https://github.com/Qulierm/Numlex/releases/download/4.9.4/Numlex-4.9.4-macOS-arm64.dmg"
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
