#!/bin/bash

echo "Creating Xcode project for Wallpaper app..."

# Remove the Swift package setup
rm -rf Sources Package.swift

# Create a simple Xcode project structure
PROJECT_NAME="Wallpaper"
PROJECT_DIR="$PROJECT_NAME.xcodeproj"

echo "To create the Xcode project:"
echo "1. Open Xcode"
echo "2. Choose 'Create a new Xcode project'"
echo "3. Select 'macOS' > 'App'"
echo "4. Use these settings:"
echo "   - Product Name: Wallpaper"
echo "   - Interface: SwiftUI"
echo "   - Language: Swift"
echo "   - Use Core Data: NO"
echo "   - Include Tests: YES (optional)"
echo ""
echo "5. Save the project in: $(pwd)"
echo ""
echo "6. After creating the project:"
echo "   - Delete the default ContentView.swift"
echo "   - Add all the Swift files from this directory to the project"
echo "   - Add these frameworks to the project:"
echo "     * AVKit"
echo "     * AVFoundation" 
echo "     * UserNotifications"
echo ""
echo "7. Configure the Info.plist with required permissions"
echo "8. Build and run with Cmd+R"
echo ""

# Create a simplified test version
echo "Alternatively, you can test individual components with:"
echo "./test_individual_components.sh"
