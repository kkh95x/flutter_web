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
    apiKey: 'AIzaSyBFNiRkiVhX05cPRRaDCJmIQGoBs2ctGBs',
    appId: '1:1026994798647:web:583a480f502b19a9de3fb2',
    messagingSenderId: '1026994798647',
    projectId: 'login-sit',
    authDomain: 'login-sit.firebaseapp.com',
    storageBucket: 'login-sit.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzcWxHdBgRrviVbjdV9Wqh324huuUUelY',
    appId: '1:1026994798647:android:a8997037524c735ade3fb2',
    messagingSenderId: '1026994798647',
    projectId: 'login-sit',
    storageBucket: 'login-sit.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAbUO-ajJx-iOuY4iw48xslbSHMN71nbfg',
    appId: '1:1026994798647:ios:03d72fc2599c572cde3fb2',
    messagingSenderId: '1026994798647',
    projectId: 'login-sit',
    storageBucket: 'login-sit.appspot.com',
    iosClientId: '1026994798647-0q9gnvugos50kjd76o1qcj9nqg20o7fl.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAbUO-ajJx-iOuY4iw48xslbSHMN71nbfg',
    appId: '1:1026994798647:ios:03d72fc2599c572cde3fb2',
    messagingSenderId: '1026994798647',
    projectId: 'login-sit',
    storageBucket: 'login-sit.appspot.com',
    iosClientId: '1026994798647-0q9gnvugos50kjd76o1qcj9nqg20o7fl.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginApp',
  );
}
