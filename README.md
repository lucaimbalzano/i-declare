<h1 align="center">i-declare</h1>
<p align="center">Wallpaper app, you can create palette color wallpapers based on declarations auto-generated from a json and personal settings.</p>

<p align="center">
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart Badge">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter Badge">
</p>

## Getting Started

<b># Prerequisites</b>

Ensure you have the following installed:

Flutter SDK
Android Studio or another IDE for running Android emulators.
<b># Dependencies</b>s

The project uses the following Flutter packages:

```
$ flutter pub get
$ flutter run
```

<b># Permissions</b>

This app requires the following permissions:

- <b>Storage Permission</b>: To save the captured image to the device's Downloads folder.
- <b>Manage External Storage Permission (Android 11+)</b>: For full access to external storage on newer Android versions.
- <b>Make sure you have the following permissions in the AndroidManifest.xml</b>: connect an Android device or start an emulator.

## Features

Capture a widget as an image.

Save the image to the device's Downloads folder.

Set the captured image as a wallpaper (home, lock, or both screens).

Handle storage permissions for Android devices.

## Screenshots

<p align="center">
  <img
    src="https://github.com/user-attachments/assets/750cb42f-3344-4e88-af1a-0500e3f5b27b"
    alt="Screenshot 2024-09-28 at 13 13 26"
    width="375"
    height="812"
    style="max-width: 100%; height: auto;"
  />
  <img
    src="https://github.com/user-attachments/assets/6a6a0ba7-5e20-494a-8ef4-acaa62c9e83f"
    alt="Screenshot 2024-09-28 at 13 14 28"
    width="375"
    height="812"
    style="max-width: 100%; height: auto;"
  />
</p>

### Permissions

main permissions are written in `AndroidManifest.xml`:

```
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.MANAGE_EXTERNAL_STORAGE"/>
```

`WRITE_EXTERNAL_STORAGE` note in Android 10 (API level 29) and higher, this permission has limited use and the app must handle storage through scoped storage for better privacy.

<b> Android Compatibility </b>

- Android 10+ (API 29 and above): The app uses requestLegacyExternalStorage to maintain access to external storage.
- Android 11+ (API 30 and above): The app requests MANAGE_EXTERNAL_STORAGE permission for full storage access.

If the app fails to capture or set the wallpaper, check if the app has the necessary storage permissions.
On Android 11+, ensure the MANAGE_EXTERNAL_STORAGE permission is granted.

### How it Works

```
The user taps the camera icon to capture a widget.
The app captures the widget as an image and saves it to the Downloads folder.
The user is prompted to set the captured image as the home screen, lock screen, or both wallpapers.
```

### Future Enhancements

```
Add support for iOS (currently, the Wallpaper package only supports Android).
Allow users to choose a custom image from the gallery to set as wallpaper.
Add more customization options for the captured widget (e.g., different colors, fonts, etc.).
```

### License

This project is licensed under the MIT License - see the LICENSE file for details.
