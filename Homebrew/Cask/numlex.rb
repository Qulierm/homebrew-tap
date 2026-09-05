cask "numlex" do
  version "4.5.1"
  desc "Natural-calculation notebook for the Mac: math, unit, currency and weather in one plain-text sheet"
  homepage "https://github.com/Qulierm/Numlex"

  url "https://github.com/Qulierm/Numlex/releases/download/4.5.1/Numlex-4.5.1-macOS-arm64.dmg"
  sha256 "2d6a878030c64cbfd28e0597908191b47178103b71fcd5e7be0d3d5df63d4bf5"

  name "Numlex"

  livecheck do
    url "https://api.github.com/repos/Qulierm/Numlex/releases/latest"
    regex /Numlex-(\d+(?:\.\d+)+)-macOS-arm64\.dmg/i
  end

  app "Numlex.app"
end
