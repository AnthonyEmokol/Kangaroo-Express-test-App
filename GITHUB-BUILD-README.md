# Build Kangaroo Express Test App from your phone with GitHub Actions

This project is prepared for a phone-only cloud build. GitHub Actions builds the Android APKs on GitHub's cloud runner; Android Studio is not required on your phone.

## What the workflow builds

- **Debug APK:** `Kangaroo Express Test App-debug.apk` — installable and intended for testing.
- **Release APK:** `Kangaroo Express Test App-release.apk` — also signed for testing with a temporary CI key. It is **not** a production/Play Store signing key.

The workflow is in `.github/workflows/build-apk.yml` and can be started from the GitHub **Actions** tab with **Run workflow**. It also runs automatically when you push to `main`.

## Phone steps

1. Sign in to GitHub in your phone browser: https://github.com/
2. Create a **new repository** (a public repository is simplest for testing).
3. Upload the contents of this `AndroidPackage` folder to the repository, keeping the `.github/workflows/build-apk.yml` file and the `app/` folder in place.
4. Open the repository's **Actions** tab.
5. Open **Build Kangaroo Express APKs** and tap **Run workflow** if it has not started automatically.
6. Wait for the green check mark.
7. Open the completed workflow run. Under **Artifacts**, download `Kangaroo-Express-Test-App-APKs`.
8. Open the downloaded ZIP and install the APK on your Android phone.

GitHub stores workflow artifacts after a successful run. They can be downloaded from the workflow run's **Artifacts** section.

## Important

- The release APK is signed with a temporary test key created during each GitHub build. This is suitable for friends/testing, not for publishing to Google Play.
- If you later need updateable production releases, use a private permanent keystore and GitHub Actions secrets.
