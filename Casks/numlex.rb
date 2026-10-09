# frozen_string_literal: true

cask "numlex" do
  version "4.9.6"
  sha256 "0937e088e5a4351ce4dfcbb9e67826952114cbebbb8b86ab0c702e0c31ee0524"

  url "https://github.com/Qulierm/Numlex/releases/download/4.9.6/Numlex-4.9.6-macOS-arm64.dmg"
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
