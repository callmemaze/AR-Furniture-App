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
    apiKey: 'AIzaSyDHSE5uIBS9A_7mjx5MMmCVUaABvtwRKOA',
    appId: '1:1003372645463:web:30aab150cb75d3330be712',
    messagingSenderId: '1003372645463',
    projectId: 'ar-furniture-app-8be34',
    authDomain: 'ar-furniture-app-8be34.firebaseapp.com',
    storageBucket: 'ar-furniture-app-8be34.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtYSCBG9ILqe_gfe_L7W2QU8g0B-L9plo',
    appId: '1:1003372645463:android:f8c02ba00988e4160be712',
    messagingSenderId: '1003372645463',
    projectId: 'ar-furniture-app-8be34',
    storageBucket: 'ar-furniture-app-8be34.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDeniSQS9DplahkUANjb8OrQe_qGWelzQ8',
    appId: '1:1003372645463:ios:791f85960de886020be712',
    messagingSenderId: '1003372645463',
    projectId: 'ar-furniture-app-8be34',
    storageBucket: 'ar-furniture-app-8be34.appspot.com',
    iosClientId: '1003372645463-7m5dasvr0jbpav4ioj84qfdele8hmvrk.apps.googleusercontent.com',
    iosBundleId: 'com.example.arFurnitureApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDeniSQS9DplahkUANjb8OrQe_qGWelzQ8',
    appId: '1:1003372645463:ios:791f85960de886020be712',
    messagingSenderId: '1003372645463',
    projectId: 'ar-furniture-app-8be34',
    storageBucket: 'ar-furniture-app-8be34.appspot.com',
    iosClientId: '1003372645463-7m5dasvr0jbpav4ioj84qfdele8hmvrk.apps.googleusercontent.com',
    iosBundleId: 'com.example.arFurnitureApp',
  );
}
