cask "animated-wallpaper" do
  version "1.0.9"
  sha256 "6ee48170f507c8e33e8671e12867a4e494105fb1f2d16aa96a2d944c8822d1a8"

  url "https://github.com/dodabuilt/AnimatedWallpaper/releases/download/v#{version}/AnimatedWallpaper-Installer.pkg"
  name "Animated Wallpaper"
  desc "Transform your macOS desktop with animated video and GIF wallpapers"
  homepage "https://github.com/dodabuilt/AnimatedWallpaper"

  pkg "AnimatedWallpaper-Installer.pkg"

  uninstall pkgutil: "com.davidmedvedev.animatedwallpaper",
            delete:  "/Applications/AnimatedWallpaper.app"

  zap trash: [
    "~/Library/Application Support/AnimatedWallpaper",
    "~/Library/Preferences/com.dash.animatedwallpaper.plist",
    "~/Library/Caches/com.dash.animatedwallpaper",
  ]

  caveats <<~EOS
    After installation, open Animated Wallpaper from your Applications folder.
    Look for the icon in your menu bar to get started!
  EOS
end
