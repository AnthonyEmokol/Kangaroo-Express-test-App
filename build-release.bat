@echo off
call gradlew.bat assembleRelease
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
echo APK: app\build\outputs\apk\release\app-release.apk
