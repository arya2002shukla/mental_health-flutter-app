import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
///
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyfpFCNYII8mZJCnDHYwNWu7t6JsSmIz8',
    appId: '1:252201530842:android:63a17d202017d3ecb17ce3',
    messagingSenderId: '252201530842',
    projectId: 'bombapp-d4f0d',
    storageBucket: 'bombapp-d4f0d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvTVT6i0Ze6a_bHrVzyuL1PuVc4gs7Hww',
    appId: '1:252201530842:ios:f025685984df734cb17ce3',
    messagingSenderId: '252201530842',
    projectId: 'bombapp-d4f0d',
    storageBucket: 'bombapp-d4f0d.appspot.com',
    iosClientId: '252201530842-skoemivdloopcdlvvc3o6fgunpmcrp2g.apps.googleusercontent.com',
    iosBundleId: 'com.example.bombApp',
  );
}