// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBeDYlQ60Ejg165yUw-cQJAdqMbEVWqXKo',
    appId: '1:775063220344:web:aa334bdf7c0b072450bd8d',
    messagingSenderId: '775063220344',
    projectId: 'spotify-610df',
    authDomain: 'spotify-610df.firebaseapp.com',
    storageBucket: 'spotify-610df.firebasestorage.app',
    measurementId: 'G-4EZ5EC3QYN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwaVFO9_AglPRywKqks3ZZhUrhnoQJbyg',
    appId: '1:775063220344:android:86bd5eb9bcd57b3650bd8d',
    messagingSenderId: '775063220344',
    projectId: 'spotify-610df',
    storageBucket: 'spotify-610df.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUdvR0xPBJlc5Ho5JwH_4v-CPxhJKy9h0',
    appId: '1:775063220344:ios:6abfbe8c3db2509150bd8d',
    messagingSenderId: '775063220344',
    projectId: 'spotify-610df',
    storageBucket: 'spotify-610df.firebasestorage.app',
    iosBundleId: 'com.example.spotifyApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUdvR0xPBJlc5Ho5JwH_4v-CPxhJKy9h0',
    appId: '1:775063220344:ios:6abfbe8c3db2509150bd8d',
    messagingSenderId: '775063220344',
    projectId: 'spotify-610df',
    storageBucket: 'spotify-610df.firebasestorage.app',
    iosBundleId: 'com.example.spotifyApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBeDYlQ60Ejg165yUw-cQJAdqMbEVWqXKo',
    appId: '1:775063220344:web:1e134f6a9f0f9acf50bd8d',
    messagingSenderId: '775063220344',
    projectId: 'spotify-610df',
    authDomain: 'spotify-610df.firebaseapp.com',
    storageBucket: 'spotify-610df.firebasestorage.app',
    measurementId: 'G-SQ5NT85ED2',
  );
}