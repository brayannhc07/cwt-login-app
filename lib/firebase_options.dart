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
    apiKey: 'AIzaSyDqhFap-HHehGb3gUyTFu0evLk9d42js0s',
    appId: '1:212075994330:web:7df7db156ec69032d6d9e3',
    messagingSenderId: '212075994330',
    projectId: 'flutter-login-app-a8b2d',
    authDomain: 'flutter-login-app-a8b2d.firebaseapp.com',
    storageBucket: 'flutter-login-app-a8b2d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCT6BdeLhltw_jevmnYJ9LVj22mFAH8fXw',
    appId: '1:212075994330:android:89af64f472381581d6d9e3',
    messagingSenderId: '212075994330',
    projectId: 'flutter-login-app-a8b2d',
    storageBucket: 'flutter-login-app-a8b2d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAsZWCmdbk2e-wBAqq7e5eXnb1kL4avwpo',
    appId: '1:212075994330:ios:ce6180fe47ab74b5d6d9e3',
    messagingSenderId: '212075994330',
    projectId: 'flutter-login-app-a8b2d',
    storageBucket: 'flutter-login-app-a8b2d.appspot.com',
    iosClientId: '212075994330-tnk599bo0fn5hgfjh0n8pmutiuspgcff.apps.googleusercontent.com',
    iosBundleId: 'com.example.arqontacApp',
  );
}