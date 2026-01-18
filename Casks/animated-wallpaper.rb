cask "animated-wallpaper" do
  version "1.0.5"
  sha256 "d98f123b34c4605ff9a3f66d14c821e4ebbc6a11de08b085733376bdf0f1fe8e"

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
