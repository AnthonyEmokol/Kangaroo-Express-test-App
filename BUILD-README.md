# Kangaroo Express Test App — Android build package

App name: Kangaroo Express Test App
Application ID: com.kangarooexpress.testapp
Minimum Android: 6.0 (API 23)
Target SDK: 35

## Build debug APK
Android Studio: Build > Build Bundle(s) / APK(s) > Build APK(s), then select debug.
Output: app/build/outputs/apk/debug/app-debug.apk

Command line (from this folder):
./gradlew assembleDebug

## Build release APK
Android Studio: Build > Generate Signed Bundle / APK > APK > release.
For friend testing, a signed release APK is recommended. Create a private keystore and keep it safe.
Output: app/build/outputs/apk/release/app-release.apk

Command line after configuring signing:
./gradlew assembleRelease

## Notes
- Debug has application ID suffix .debug so debug and release can be installed together.
- The Android wrapper opens the current Kangaroo Express web app at https://kangarooexpress.vercel.app/app/.
- Internet permission is required because product data and images are served by the live app.
