cask "numlex" do
  version "4.9.0"
  sha256 "c74e54db46574e41658a079504f9464bb01c4749fb60567440616d9c5475cd0f"

  url "https://github.com/Qulierm/Numlex/releases/download/4.9.0/Numlex-4.9.0-macOS-arm64.dmg"
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
