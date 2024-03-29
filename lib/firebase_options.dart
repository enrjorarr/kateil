// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBREhX7f7l3UpXdPFAfeyRbuk2tYrbMVu0',
    appId: '1:867438542683:web:fcecec0018d8a3e80ee47e',
    messagingSenderId: '867438542683',
    projectId: 'kateil',
    authDomain: 'kateil.firebaseapp.com',
    storageBucket: 'kateil.appspot.com',
    measurementId: 'G-DGKKVJ87X7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDS1LeTNRQoe-jBo3v8pXSCwbAsxvbSwDs',
    appId: '1:867438542683:android:79324fe8e329ce4e0ee47e',
    messagingSenderId: '867438542683',
    projectId: 'kateil',
    storageBucket: 'kateil.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDQh6p7DphUT1NWHY9PHBEl_-j_z-R86f4',
    appId: '1:867438542683:ios:143ecf1af7b71f1c0ee47e',
    messagingSenderId: '867438542683',
    projectId: 'kateil',
    storageBucket: 'kateil.appspot.com',
    iosBundleId: 'com.example.kateil',
  );
}
