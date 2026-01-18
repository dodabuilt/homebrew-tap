cask "animated-wallpaper" do
  version "1.0.4"
  sha256 :no_check  # Will be updated with actual SHA256

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
