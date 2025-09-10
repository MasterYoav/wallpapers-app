#!/bin/bash

# Build script for Wallpaper macOS app
# This script builds the app using swiftc directly

echo "Building Wallpaper app..."

# Create build directory
mkdir -p build

# Compile Swift files
swiftc -parse WallpaperApp.swift ContentView.swift WallpaperItem.swift WallpaperManager.swift WallpaperGridView.swift WallpaperDetailView.swift SettingsView.swift

if [ $? -eq 0 ]; then
    echo "✅ Swift files parsed successfully!"
    echo ""
    echo "To build the complete app:"
    echo "1. Open Wallpaper.xcodeproj in Xcode"
    echo "2. Select your development team"
    echo "3. Build and run (⌘+R)"
    echo ""
    echo "Current project structure:"
    find . -name "*.swift" -o -name "*.plist" -o -name "*.entitlements" | sort
else
    echo "❌ Build failed!"
    exit 1
fi
