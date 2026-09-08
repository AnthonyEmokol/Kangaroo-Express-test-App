@echo off
call gradlew.bat assembleDebug
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
echo APK: app\build\outputs\apk\debug\app-debug.apk
