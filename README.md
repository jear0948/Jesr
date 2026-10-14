# Pulse – Android app

Your fitness tracker packaged as a real Android app (Capacitor). The app itself is in `www/index.html`.

## Option A: build the APK online (no Android Studio needed)
1. Create a free account at github.com and make a new repository.
2. Upload every file from this folder (keep the `.github/workflows` folder).
3. Open the repository's **Actions** tab. The "Build APK" job runs automatically (about 5 minutes). You can also run it with "Run workflow".
4. When it finishes, open the run and download **Pulse-APK** from Artifacts. Unzip it to get `app-debug.apk`.
5. Send the APK to your phone and open it. Android will ask you to allow installs from that source.

## Option B: build on a computer with Android Studio
1. Install Node.js 20+, JDK 17 and Android Studio.
2. In this folder run: `npm install` then `npm run setup`
3. Run `npm run open`, then in Android Studio choose Build > Build APK(s).
4. The APK is at `android/app/build/outputs/apk/debug/app-debug.apk`.

## Notes
- This is a debug build for your own phone. Publishing to Google Play needs a signed release build.
- To update the app, replace `www/index.html` and rebuild.
- Data is stored on the phone inside the app. Uninstalling the app deletes it.
- Walk and run tracking continues in the background (screen off or another app open) using a foreground service. Android shows a notification while it runs.
- The first time you track, allow Location. Also allow Notifications when asked, so the tracking notification and the rest-timer alert can show.
- Rest timer: when the app is in the background, a notification tells you when your rest is over.
- If your phone has aggressive battery saving, set Pulse to "Unrestricted" in Settings > Apps > Pulse > Battery so tracking is not stopped.
