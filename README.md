# Wallpaper - Advanced macOS Video Wallpaper Engine

A professional-grade macOS application for managing and setting video wallpapers, inspired by Wallper with enhanced features and modern design.

## 🚀 Features

### ✅ **Core Video Engine**
- **Advanced Video Wallpaper Manager**: Multi-screen support with AVKit optimization
- **Hardware-Accelerated Playback**: Metal-optimized rendering for smooth 4K/60fps videos
- **Smart Video Looping**: Seamless loops with AVPlayerLooper
- **Multi-Display Intelligence**: Independent wallpapers per screen with audio control
- **Performance Optimization**: Low-latency decoding with efficient memory management
- **Quality Settings**: Configurable video quality (Low/Medium/High/Ultra) with bitrate control

### ✅ **Modern User Interface**
- **Wallper-Inspired Design**: Ultra-thin materials and sophisticated aesthetics
- **Navigation Sidebar**: Structured sections (Wallpapers, User Created, Likes, My Media, Devices, Settings)
- **Advanced Video Grid**: Thumbnail generation, hover effects, and contextual menus
- **Smart Filtering**: Category, resolution, duration, and size filters with live search
- **Fullscreen Preview**: Immersive video player with controls and keyboard shortcuts (ESC)
- **Detail Panel**: Comprehensive video information with action buttons

### ✅ **Video Management System**
- **Comprehensive Video Library**: Support for MP4, MOV, M4V, AVI, MKV formats
- **Smart Video Metadata**: Duration, resolution, file size, category, author tracking
- **Advanced Caching**: NSCache-based system with background downloads
- **Thumbnail Generation**: AVFoundation-powered preview images
- **Like System**: Persistent favorites with heart indicators
- **Download Management**: Local caching with progress tracking

### ✅ **Smart Features**
- **Auto-Restore Wallpapers**: Remembers and reapplies wallpapers on startup
- **Screen Change Detection**: Automatically adjusts to display configuration changes
- **Video Sorting**: 10 different sorting options (newest, most liked, duration, size, etc.)
- **Category System**: 11 predefined categories including Nature, Space, Abstract, Gaming
- **Search & Filter**: Real-time search with advanced filtering capabilities
- **Context Menus**: Right-click actions for quick wallpaper operations

### 🔧 **Technical Architecture**
- **SwiftUI + Combine**: Reactive UI with modern Swift frameworks
- **MVVM Pattern**: Clean separation with ObservableObject state management
- **Async/Await**: Modern Swift concurrency for smooth operations
- **AVFoundation Integration**: Professional video handling and processing
- **CoreAnimation**: Smooth transitions and reveal animations
- **NSCache Optimization**: Intelligent memory management for thumbnails and videos

## Requirements

- macOS 13.0 or later
- Xcode 15.0 or later (for building)

### 🚧 **Coming Soon**
- **License Management**: Hardware ID validation with premium feature gating
- **Device Synchronization**: Multi-device wallpaper sync across Macs
- **Upload System**: User video upload with progress tracking
- **Daily Shuffle**: Automated wallpaper rotation with smart scheduling
- **Enhanced Settings**: Comprehensive preferences with video quality controls

## 🏗️ Architecture

### **Project Structure**
```
Wallpaper/
├── WallpaperApp.swift          # App entry point with modern window management
├── Models/
│   └── VideoData.swift         # Comprehensive video data models
├── Core/
│   └── VideoWallpaperManager.swift  # Advanced video engine with multi-screen support
├── Store/
│   └── VideoLibraryStore.swift # State management and video collections
├── UI/
│   ├── MainContentView.swift   # Primary interface controller
│   ├── NavigationSidebar.swift # Modern sidebar navigation
│   ├── VideoGridView.swift     # Advanced video grid with filtering
│   └── VideoDetailPanel.swift  # Comprehensive video preview
└── Resources/
    ├── Info.plist             # App configuration
    └── Wallpaper.entitlements # macOS permissions
```

### **Key Components**

#### **VideoWallpaperManager**
- Multi-screen video wallpaper engine
- AVKit optimization with hardware acceleration
- Smooth transitions and reveal animations
- Quality settings and performance optimization

#### **VideoLibraryStore** 
- ObservableObject with @Published properties
- Advanced filtering and search capabilities
- Persistent likes and downloads management
- Async video loading with error handling

#### **Modern UI System**
- SwiftUI with ultra-thin materials
- Combine-powered reactive updates
- Advanced animations and transitions
- Wallper-inspired design language

## 🚀 Getting Started

### **Building**
1. Open `Wallpaper.xcodeproj` in Xcode 15+
2. Configure your development team
3. Build and run (⌘+R)

### **Usage**
1. **Browse Videos**: Navigate between sections using the sidebar
2. **Filter & Search**: Use advanced filters for category, resolution, duration
3. **Preview Videos**: Click any video for fullscreen preview (ESC to close)
4. **Set Wallpapers**: Apply to all screens or individual displays
5. **Manage Collection**: Like, download, and organize your video library
6. **Auto Features**: Enable auto-restore and screen change detection

### **Keyboard Shortcuts**
- `ESC` - Close fullscreen video preview
- `Space` - Play/pause video preview
- `⌘+F` - Focus search field
- `⌘+1-6` - Navigate between sidebar sections

## 🔒 Permissions & Security

**Required macOS Permissions:**
- **File System Access**: Video import and library management
- **Pictures/Movies Folders**: Media library access
- **Screen Recording**: Desktop wallpaper placement
- **Network Access**: Future cloud features

**Security Features:**
- App Sandbox with hardened runtime
- Code signing and notarization ready
- Secure video handling with AVFoundation
- Privacy-focused local storage


## 📱 Supported Formats

**Video Formats:**
- MP4 (H.264/H.265)
- MOV (QuickTime)
- M4V (iTunes)
- AVI (Audio Video Interleave)
- MKV (Matroska)

**Resolution Support:**
- 720p HD
- 1080p Full HD  
- 1440p QHD
- 4K UHD (3840×2160)
- 8K UHD (7680×4320)
- Ultrawide (3440×1440)

## 🤝 Contributing

This project demonstrates advanced macOS development with:
- Modern SwiftUI architecture
- Professional video handling
- Sophisticated UI/UX design
- Performance optimization
- Multi-screen management

## 📄 License

Educational and demonstration purposes.
Copyright © 2024. All rights reserved.
