cask "animated-wallpaper-zip" do
  version "1.0.10"
  sha256 "2f974c80ab2a3e5f8ed73fd8291fdabda61b3d3901617a75b5c44915c7278d48"

  url "https://github.com/dodabuilt/AnimatedWallpaper/releases/download/v#{version}/AnimatedWallpaper-#{version}.zip"
  name "Animated Wallpaper"
  desc "Transform your macOS desktop with animated video and GIF wallpapers (no admin required)"
  homepage "https://github.com/dodabuilt/AnimatedWallpaper"

  app "AnimatedWallpaper.app"

  zap trash: [
    "~/Library/Application Support/AnimatedWallpaper",
    "~/Library/Preferences/com.dash.animatedwallpaper.plist",
    "~/Library/Caches/com.dash.animatedwallpaper",
  ]

  caveats <<~EOS
    Animated Wallpaper installed to /Applications (no admin required!).
    Look for the icon in your menu bar to get started.
  EOS
end
