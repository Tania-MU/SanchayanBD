# Sanchayan BD – Android WebView App

A native Android WebView app for **https://sanchayanbd.com**

---

## Features
- ✅ Opens website in a native WebView (NOT Chrome or external browser)
- ✅ Offline caching – previously visited pages load without internet
- ✅ Custom offline fallback page when no cache is available
- ✅ Pull-to-refresh to reload the page
- ✅ Back button navigates within the WebView
- ✅ Progress bar while pages load
- ✅ JavaScript, DOM storage, and media playback enabled
- ✅ Supports Android 5.0+ (API 21 and above)

---

## How to Build the APK

### Option A – Android Studio (Recommended)

1. **Install Android Studio**: https://developer.android.com/studio  
   (Free, ~1 GB download)

2. **Open the project**  
   - Launch Android Studio  
   - Click **File → Open**  
   - Select the `SanchayanBD` folder  
   - Wait for Gradle sync to complete (~2–5 minutes first time)

3. **Build the APK**  
   - Click **Build → Build Bundle(s) / APK(s) → Build APK(s)**  
   - APK will be at: `app/build/outputs/apk/debug/app-debug.apk`

4. **Install on your phone**  
   - Transfer the APK to your phone  
   - Enable **Install from Unknown Sources** in Settings  
   - Tap the APK to install

### Option B – Command Line (Gradle)

```bash
cd SanchayanBD
./gradlew assembleDebug
# APK: app/build/outputs/apk/debug/app-debug.apk
```

---

## Project Structure

```
SanchayanBD/
├── app/
│   ├── src/main/
│   │   ├── AndroidManifest.xml
│   │   ├── java/com/sanchayanbd/app/
│   │   │   └── MainActivity.kt       ← Main WebView logic
│   │   ├── res/
│   │   │   ├── layout/activity_main.xml
│   │   │   ├── values/ (strings, colors, themes)
│   │   │   └── mipmap-*/ic_launcher.png
│   │   └── assets/
│   │       └── offline.html          ← Offline fallback page
│   └── build.gradle
├── build.gradle
├── settings.gradle
└── gradle.properties
```

---

## Customization

| What to change | Where |
|---|---|
| Website URL | `MainActivity.kt` → `targetUrl` variable |
| App name | `res/values/strings.xml` |
| App icon | Replace `mipmap-*/ic_launcher.png` |
| Theme color | `res/values/colors.xml` → `primary` |
| Offline page | `assets/offline.html` |

---

## Requirements
- Android Studio Hedgehog (2023.1.1) or newer  
- JDK 17 (bundled with Android Studio)  
- Android SDK API 34
