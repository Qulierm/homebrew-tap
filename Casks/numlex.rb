cask "numlex" do
  version "4.7.0"
  desc "Natural-calculation notebook for the Mac: math, unit, currency and weather in one plain-text sheet"
  homepage "https://github.com/Qulierm/Numlex"

  url "https://github.com/Qulierm/Numlex/releases/download/4.7.0/Numlex-4.7.0-macOS-arm64.dmg"
  sha256 "0e7c4605059675702cfaef72dafdfea9b63f47b996866c0522ad43b5c724fe76"

  name "Numlex"

  livecheck do
    url "https://api.github.com/repos/Qulierm/Numlex/releases/latest"
    regex /Numlex-(\d+(?:\.\d+)+)-macOS-arm64\.dmg/i
  end

  app "Numlex.app"
end
