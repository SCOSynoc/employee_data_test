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
    apiKey: 'AIzaSyC_VMvQa-RCYzDe7RcM8JqgJ11a5hF-8u4',
    appId: '1:360139610332:web:7a17d12e3f576cd1fe3c19',
    messagingSenderId: '360139610332',
    projectId: 'employeedatatest-bb262',
    authDomain: 'employeedatatest-bb262.firebaseapp.com',
    storageBucket: 'employeedatatest-bb262.firebasestorage.app',
    measurementId: 'G-Y7XNLLYEY4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApFM_hpDphH2xvGG9vernZ0vzsfY3_rY0',
    appId: '1:360139610332:android:205136421e26a905fe3c19',
    messagingSenderId: '360139610332',
    projectId: 'employeedatatest-bb262',
    storageBucket: 'employeedatatest-bb262.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBYYKEkk4Wgkqp9fBRvcl7VNC_WZaSJWT4',
    appId: '1:360139610332:ios:4557412b915fe88bfe3c19',
    messagingSenderId: '360139610332',
    projectId: 'employeedatatest-bb262',
    storageBucket: 'employeedatatest-bb262.firebasestorage.app',
    iosBundleId: 'com.example.employeeDataTest',
  );
}
