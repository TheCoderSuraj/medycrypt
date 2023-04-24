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
        return macos;
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
    apiKey: 'AIzaSyBu1mfHnTer83_BD8o4rHbnGJdxict8Y58',
    appId: '1:980188021150:web:b8b9a00fb119bb1636568f',
    messagingSenderId: '980188021150',
    projectId: 'medycrypt',
    authDomain: 'medycrypt.firebaseapp.com',
    storageBucket: 'medycrypt.appspot.com',
    measurementId: 'G-C3Q5Q78CY5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCrmaxQU4TDAYz2XZkYsrx6v8xLLbaSTlY',
    appId: '1:980188021150:android:0791eb892842e7b436568f',
    messagingSenderId: '980188021150',
    projectId: 'medycrypt',
    storageBucket: 'medycrypt.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAV9lzYQtBr4vZl_ankvJabcEZwEGuvEpU',
    appId: '1:980188021150:ios:f244d09f400f175636568f',
    messagingSenderId: '980188021150',
    projectId: 'medycrypt',
    storageBucket: 'medycrypt.appspot.com',
    iosClientId: '980188021150-o41umk65ldonju3v5btinfg2ific0gj1.apps.googleusercontent.com',
    iosBundleId: 'com.example.medycrypt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAV9lzYQtBr4vZl_ankvJabcEZwEGuvEpU',
    appId: '1:980188021150:ios:f244d09f400f175636568f',
    messagingSenderId: '980188021150',
    projectId: 'medycrypt',
    storageBucket: 'medycrypt.appspot.com',
    iosClientId: '980188021150-o41umk65ldonju3v5btinfg2ific0gj1.apps.googleusercontent.com',
    iosBundleId: 'com.example.medycrypt',
  );
}
