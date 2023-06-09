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
    apiKey: 'AIzaSyCeBM2E6ebD3tyXQ9PhDjsgH6t8UNl9_ZI',
    appId: '1:208235265663:web:df8225226d025d131a094a',
    messagingSenderId: '208235265663',
    projectId: 'dgon-0123',
    authDomain: 'dgon-0123.firebaseapp.com',
    storageBucket: 'dgon-0123.appspot.com',
    measurementId: 'G-BN2961CQHH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrY41JsVeiZSlx-FJWrl6TZMQRceFoKik',
    appId: '1:208235265663:android:e5eff45ca04e311f1a094a',
    messagingSenderId: '208235265663',
    projectId: 'dgon-0123',
    storageBucket: 'dgon-0123.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA834cL6myJjuzfv6XWpdd5XQYpND0RINc',
    appId: '1:208235265663:ios:74cfee024e1d79031a094a',
    messagingSenderId: '208235265663',
    projectId: 'dgon-0123',
    storageBucket: 'dgon-0123.appspot.com',
    androidClientId: '208235265663-6vphdi9fm8e0r95qul6dhu25cq97gmhj.apps.googleusercontent.com',
    iosClientId: '208235265663-tririnvt97p77ihtai7lib856vtc08r8.apps.googleusercontent.com',
    iosBundleId: 'com.example.dgon',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA834cL6myJjuzfv6XWpdd5XQYpND0RINc',
    appId: '1:208235265663:ios:74cfee024e1d79031a094a',
    messagingSenderId: '208235265663',
    projectId: 'dgon-0123',
    storageBucket: 'dgon-0123.appspot.com',
    androidClientId: '208235265663-6vphdi9fm8e0r95qul6dhu25cq97gmhj.apps.googleusercontent.com',
    iosClientId: '208235265663-tririnvt97p77ihtai7lib856vtc08r8.apps.googleusercontent.com',
    iosBundleId: 'com.example.dgon',
  );
}
