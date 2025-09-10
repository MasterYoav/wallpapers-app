#!/bin/bash

echo "🔍 Verifying Wallpaper App Setup"
echo "================================="
echo ""

# Check if Xcode project exists
if [ -d "Wallpaper/Wallpaper.xcodeproj" ]; then
    echo "✅ Xcode project found: Wallpaper/Wallpaper.xcodeproj"
else
    echo "❌ Xcode project not found"
    exit 1
fi

# Check if source files are in target directory
echo ""
echo "📁 Source files in target directory:"
if [ -f "Wallpaper/Wallpaper/WallpaperApp.swift" ]; then
    echo "✅ WallpaperApp.swift"
else
    echo "❌ WallpaperApp.swift missing"
fi

if [ -d "Wallpaper/Wallpaper/Models" ]; then
    echo "✅ Models/ directory"
    echo "   - Files: $(ls Wallpaper/Wallpaper/Models/ | wc -l | tr -d ' ') files"
else
    echo "❌ Models/ directory missing"
fi

if [ -d "Wallpaper/Wallpaper/Store" ]; then
    echo "✅ Store/ directory"  
    echo "   - Files: $(ls Wallpaper/Wallpaper/Store/ | wc -l | tr -d ' ') files"
else
    echo "❌ Store/ directory missing"
fi

if [ -d "Wallpaper/Wallpaper/Core" ]; then
    echo "✅ Core/ directory"
    echo "   - Files: $(ls Wallpaper/Wallpaper/Core/ | wc -l | tr -d ' ') files"
else
    echo "❌ Core/ directory missing"
fi

if [ -d "Wallpaper/Wallpaper/Services" ]; then
    echo "✅ Services/ directory"
    echo "   - Files: $(ls Wallpaper/Wallpaper/Services/ | wc -l | tr -d ' ') files"
else
    echo "❌ Services/ directory missing"
fi

if [ -d "Wallpaper/Wallpaper/UI" ]; then
    echo "✅ UI/ directory"
    echo "   - Files: $(ls Wallpaper/Wallpaper/UI/ | wc -l | tr -d ' ') files"  
else
    echo "❌ UI/ directory missing"
fi

# Count total Swift files
SWIFT_COUNT=$(find Wallpaper/Wallpaper -name "*.swift" | wc -l | tr -d ' ')
echo ""
echo "📊 Total Swift files in target: $SWIFT_COUNT"

if [ "$SWIFT_COUNT" -ge 10 ]; then
    echo "✅ Sufficient source files found"
else
    echo "⚠️  Expected more Swift files (should be 10+)"
fi

echo ""
echo "🚀 Next Steps:"
echo "1. Xcode should be open with your project"
echo "2. In Xcode: Right-click 'Wallpaper' folder → 'Add Files to Wallpaper'"
echo "3. Select all the Swift files and folders from Wallpaper/Wallpaper/"
echo "4. Make sure 'Add to target: Wallpaper' is checked"
echo "5. Click 'Add'"
echo "6. Press Cmd+R to build and run"
echo ""
echo "📋 If you see files in Xcode project navigator, you're ready to run!"
