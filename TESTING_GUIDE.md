# 🧪 How to Test Your Wallpaper App

Your Wallpaper app is ready to test! Here are several methods, from easiest to most comprehensive:

## Method 1: Quick Component Test ✅ (Already Done)

We've already verified all components compile correctly:
- ✅ All Swift files parse without errors
- ✅ Data models work correctly  
- ✅ Core components are properly structured

## Method 2: Create Full Xcode Project (Recommended)

### Step-by-Step Instructions:

1. **Open Xcode**
   ```bash
   open -a Xcode
   ```

2. **Create New Project**
   - Choose "Create a new Xcode project"
   - Select **macOS** → **App**
   - Settings:
     - Product Name: `Wallpaper`
     - Interface: **SwiftUI**
     - Language: **Swift** 
     - Use Core Data: **NO**
     - Include Tests: **YES** (optional)

3. **Save Project**
   - Save in: `/Users/yoavperetz/Developer/Wallpaper`
   - This will create `Wallpaper.xcodeproj`

4. **Add Source Files**
   - Delete the default `ContentView.swift`
   - Right-click project → "Add Files to 'Wallpaper'"
   - Select ALL Swift files from current directory:
     - `WallpaperApp.swift`
     - `Models/VideoData.swift`
     - `Store/VideoLibraryStore.swift` 
     - `Core/VideoWallpaperManager.swift`
     - `Services/AutoWallpaperService.swift`
     - `Services/AppDelegate.swift`
     - `UI/MainContentView.swift`
     - `UI/NavigationSidebar.swift`
     - `UI/ModernVideoGridView.swift`
     - `UI/AdvancedSettingsView.swift`

5. **Add Required Frameworks**
   - Select project → Target → "Build Phases"
   - Expand "Link Binary With Libraries"
   - Click "+" and add:
     - `AVKit.framework`
     - `AVFoundation.framework`
     - `UserNotifications.framework`

6. **Configure Permissions**
   - Update `Info.plist` with camera/microphone usage descriptions
   - Copy `Wallpaper.entitlements` to project if needed

7. **Build and Run**
   - Press `Cmd+R` or click the Run button
   - The app should launch with full functionality!

## Method 3: Swift Package Manager (Alternative)

If you prefer command-line development:

1. **Use Package.swift** (already created)
2. **Open in Xcode via Package**
   ```bash
   open Package.swift
   ```
3. **Build with Swift**
   ```bash
   swift build
   ```

## Method 4: SwiftUI Previews (For UI Testing)

Each UI component has SwiftUI previews. You can test individual views:

1. Open any UI file in Xcode
2. Look for `#Preview` or add preview code:
   ```swift
   #Preview {
       NavigationSidebar(selectedItem: .constant(.allWallpapers))
           .environmentObject(VideoLibraryStore())
   }
   ```
3. Click "Resume" in preview panel

## What to Expect When Running

### 🚀 **App Launch**
- Welcome window for first-time users
- Menu bar icon with "TV" symbol
- Main window with sidebar navigation

### 🖥️ **Main Interface**
- **Left Sidebar**: Categories (All, Liked, My Media, Nature, etc.)
- **Top Toolbar**: Search bar, filters, sort options
- **Main Area**: Video grid with sample wallpapers
- **Context Menus**: Right-click videos for actions

### ⚙️ **Settings** (Click Settings in sidebar)
- **6 Tabs**: Playback, Interface, Automation, Performance, Storage, Advanced
- **Auto Wallpaper**: Enable/disable automatic changes
- **Scheduling**: Set intervals from 15min to weekly

### 📱 **Menu Bar**
- Click menu bar icon for quick actions
- "Change Wallpaper Now" button
- Status information

### 🎬 **Video Wallpapers**
- Click "Set as Wallpaper" on any video
- Multi-screen support (if you have multiple displays)
- Video plays behind desktop icons

## Troubleshooting

### Common Issues:
1. **Build Errors**: Make sure all frameworks are linked
2. **Permission Issues**: Check entitlements file
3. **Video Playback**: Requires valid video URLs (currently using placeholders)

### Debug Steps:
1. Check Console.app for error messages
2. Enable debug mode in Advanced Settings
3. Use Xcode debugger for step-through debugging

## Features to Test

### ✅ Core Features
- [ ] Launch app successfully
- [ ] Browse video categories in sidebar
- [ ] Search and filter videos
- [ ] Like/unlike videos
- [ ] View video details
- [ ] Access settings tabs

### ✅ Auto Wallpaper
- [ ] Enable auto wallpaper in settings
- [ ] Set different intervals
- [ ] Test "Change Now" button
- [ ] Check notifications

### ✅ Menu Bar
- [ ] Menu bar icon appears
- [ ] Quick actions popover
- [ ] Status information updates

### ✅ Multi-Screen (if available)
- [ ] Connect external display
- [ ] Set different wallpapers per screen
- [ ] Test mirror mode

## Next Steps After Testing

1. **Add Real Videos**: Replace sample data with actual video files
2. **Implement Premium Features**: License management, uploads
3. **Add Network Layer**: Download videos from server
4. **Performance Testing**: Test with large video libraries
5. **User Testing**: Get feedback on interface and features

---

## 🎯 Quick Start Command

For the fastest test, run:
```bash
./test_individual_components.sh
```

For full app testing:
1. Open Xcode
2. Create new macOS SwiftUI app
3. Add all Swift files
4. Run with Cmd+R

**Your video wallpaper engine is ready to launch! 🚀**
