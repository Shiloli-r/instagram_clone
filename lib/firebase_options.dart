// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD7yk9xc4RudPJXt1eDAzw6Qj585468w2I',
    appId: '1:45250821589:web:b738fcd1bbe06e8351515c',
    messagingSenderId: '45250821589',
    projectId: 'instagram-clone-1-flutter',
    authDomain: 'instagram-clone-1-flutter.firebaseapp.com',
    storageBucket: 'instagram-clone-1-flutter.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAveDP8OQJsqsuhZwqTMokmk64BWCj_sSA',
    appId: '1:45250821589:android:a974707b5eb6389a51515c',
    messagingSenderId: '45250821589',
    projectId: 'instagram-clone-1-flutter',
    storageBucket: 'instagram-clone-1-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBlIpqrvj1mtN-umgtF1f4G_MIIb7gb9do',
    appId: '1:45250821589:ios:e6e18beb76b26bd651515c',
    messagingSenderId: '45250821589',
    projectId: 'instagram-clone-1-flutter',
    storageBucket: 'instagram-clone-1-flutter.appspot.com',
    iosClientId: '45250821589-9uk3mvp83qt4q9m31shaclnof8giefjd.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramClone',
  );
}