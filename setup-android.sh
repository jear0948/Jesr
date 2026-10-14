#!/usr/bin/env bash
set -e
[ -d android ] || npx cap add android
M=android/app/src/main/AndroidManifest.xml
for P in ACCESS_FINE_LOCATION ACCESS_COARSE_LOCATION VIBRATE SCHEDULE_EXACT_ALARM USE_EXACT_ALARM; do
  grep -q "android.permission.$P\"" "$M" || sed -i "s#<uses-permission android:name=\"android.permission.INTERNET\" />#&\n    <uses-permission android:name=\"android.permission.$P\" />#" "$M"
done
npx cap sync android
