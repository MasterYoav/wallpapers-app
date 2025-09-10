# 📁 Add Your Videos to Xcode Project

Your videos are copied to the Resources folder, but they need to be added to the Xcode project so they get bundled with the app.

## 🎯 Quick Steps:

### 1. Open Xcode Project
```bash
open /Users/yoavperetz/Developer/Wallpaper/Wallpaper/Wallpaper.xcodeproj
```

### 2. Add Video Files to Project
1. **In Xcode Project Navigator (left panel):**
   - Right-click on the "Wallpaper" folder (blue icon)
   - Select "Add Files to 'Wallpaper'"

2. **Navigate to Resources folder:**
   - Go to: `Wallpaper/Resources/`
   - Select both video files:
     - `red-mazda-rx7-parked.3840x2160.mp4`
     - `6324F6EB-E0F1-468F-AC2E-A983EBDDD53B.mov`

3. **Important Settings:**
   - ✅ Check "Add to target: Wallpaper"
   - ✅ Choose "Create groups" (not folder references)
   - Click "Add"

### 3. Verify Files Are Added
After adding, you should see the video files in your Xcode project navigator under the Wallpaper group.

### 4. Build and Run
- Press `Cmd+R` to build and run
- Your real videos should now appear in the app!

## 🎬 Expected Result:

Once the files are properly added to the Xcode project:
- **Technology Category**: Will show your "Red Mazda RX-7 Parked" video
- **Colors Category**: Will show your "Motion Graphics" video
- **Both videos**: Will have real file sizes (37-38MB) and 4K resolution
- **"Set as Wallpaper"**: Will work with your actual video files!

## 🛠 Alternative: Automatic Method

If you want me to handle this programmatically, I can create a script to modify the Xcode project file directly, but the manual method above is simpler and more reliable.

---

**Once you add the files to Xcode and rebuild, your personal videos will be available in the app!** 🚀
