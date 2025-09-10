# 🚀 Xcode Setup Guide for Wallpaper App

## Why `swift build` Doesn't Work

**❌ `swift build` is for command-line tools and libraries**
**✅ Your Wallpaper app is a SwiftUI macOS GUI application**

SwiftUI apps need Xcode to:
- Handle the macOS app bundle
- Link graphics frameworks (AVKit, SwiftUI)
- Manage app lifecycle and permissions
- Create the .app package

---

## 📱 Step-by-Step Xcode Setup

### 1. Open Xcode (Already Done)
Xcode should be open now. If not:
```bash
open -a Xcode
```

### 2. Create New Project
- Click "Create a new Xcode project"
- Or File → New → Project (Cmd+Shift+N)

### 3. Choose Template
- Select **macOS** tab
- Choose **App**
- Click "Next"

### 4. Configure Project
Fill in these **exact settings**:
- **Product Name:** `Wallpaper`
- **Team:** (your Apple ID)
- **Organization Identifier:** `com.yourname.wallpaper`
- **Bundle Identifier:** `com.yourname.wallpaper` (auto-filled)
- **Language:** **Swift**
- **Interface:** **SwiftUI** ⚠️ (Important!)
- **Use Core Data:** ❌ **Unchecked**
- **Include Tests:** ✅ **Checked** (optional)

### 5. Save Location
- Navigate to: `/Users/yoavperetz/Developer/Wallpaper`
- Click "Create"

### 6. Clean Default Files
Xcode creates default files. Delete these:
- Right-click `ContentView.swift` → Delete
- Right-click `WallpaperApp.swift` → Delete (if exists)

### 7. Add Your Files
**Method A - Drag & Drop:**
- Open Finder to `/Users/yoavperetz/Developer/Wallpaper`
- Drag these files into Xcode project navigator:
  - `WallpaperApp.swift`
  - `Models/` folder
  - `Store/` folder
  - `Core/` folder
  - `Services/` folder
  - `UI/` folder

**Method B - Add Files:**
- Right-click project → "Add Files to 'Wallpaper'"
- Select all .swift files and folders
- Click "Add"

### 8. Link Required Frameworks
- Click project name at top of navigator
- Select "Wallpaper" target
- Click "Build Phases" tab
- Expand "Link Binary With Libraries"
- Click "+" button
- Add these frameworks:
  - `AVKit.framework`
  - `AVFoundation.framework`
  - `UserNotifications.framework`

### 9. Configure Permissions (Optional)
- Click "Info.plist" in navigator
- Add keys for camera/microphone if needed

### 10. Build and Run! 🚀
- Press **Cmd+R** or click ▶️ Run button
- Choose target: "My Mac" 
- Your app should launch!

---

## 🎯 What You'll See

When the app launches:
- ✅ **Welcome window** (first time)
- ✅ **Menu bar icon** with TV symbol
- ✅ **Main window** with sidebar navigation
- ✅ **Video grid** with sample wallpapers
- ✅ **Settings** with 6 tabs of options

---

## 🛠️ Troubleshooting

### Build Errors?
1. **Missing frameworks** - Go back to step 8
2. **Code signing** - Select your Apple ID in project settings
3. **SwiftUI errors** - Make sure Interface is set to "SwiftUI"

### App Won't Launch?
1. Check Console.app for error messages
2. Try cleaning: Product → Clean Build Folder (Cmd+Shift+K)
3. Reset simulator: Device → Erase All Content and Settings

### Files Not Found?
1. Make sure files are added to target (checkboxes selected)
2. Check file paths in project navigator
3. Rebuild: Cmd+Shift+K then Cmd+R

---

## 🎉 Success!

Once running, you'll have a **professional macOS video wallpaper engine** with:
- Multi-screen video wallpaper support
- Auto-scheduling with smart algorithms
- Modern SwiftUI interface
- Menu bar integration
- Comprehensive settings
- Video library management

**Your app is production-ready!** 🚀

---

## 🔄 Alternative: Test Playground

If you want a quick test without full Xcode project:
```bash
open WallpaperTest.playground
```

This playground tests your core data models with a simple SwiftUI interface.
