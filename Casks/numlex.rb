cask "numlex" do
  version "4.9.4.1"
  sha256 "744fc564df6802db8ebb6fa9d3da5081a28d17b8a73593b5e4b006497ea7b4ee"

  url "https://github.com/Qulierm/Numlex/releases/download/4.9.4.1/Numlex-4.9.4.1-macOS-arm64.dmg"
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
