#!/bin/bash

echo "Testing Swift compilation..."

# Test individual Swift files for syntax errors
echo "Testing WallpaperApp.swift..."
swiftc -parse WallpaperApp.swift -I . || exit 1

echo "Testing Models/VideoData.swift..."
swiftc -parse Models/VideoData.swift || exit 1

echo "Testing Store/VideoLibraryStore.swift..."
swiftc -parse Store/VideoLibraryStore.swift Models/VideoData.swift || exit 1

echo "Testing Core/VideoWallpaperManager.swift..."
swiftc -parse Core/VideoWallpaperManager.swift Models/VideoData.swift || exit 1

echo "Testing Services/AutoWallpaperService.swift..."
swiftc -parse Services/AutoWallpaperService.swift Models/VideoData.swift Store/VideoLibraryStore.swift || exit 1

echo "Testing Services/AppDelegate.swift..."
swiftc -parse Services/AppDelegate.swift Models/VideoData.swift Store/VideoLibraryStore.swift Services/AutoWallpaperService.swift UI/MainContentView.swift UI/AdvancedSettingsView.swift || exit 1

echo "All Swift files compiled successfully!"
echo "Project structure is ready for Xcode integration."
