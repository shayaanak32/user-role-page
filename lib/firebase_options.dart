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
    apiKey: 'AIzaSyAT7J_ctufEjK4Vs8HszsUZzVtDg6DycLs',
    appId: '1:801389172341:web:84f0da3c7829b36d8aca3c',
    messagingSenderId: '801389172341',
    projectId: 'shayaan-eform-demo-db',
    authDomain: 'shayaan-eform-demo-db.firebaseapp.com',
    databaseURL: 'https://shayaan-eform-demo-db-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'shayaan-eform-demo-db.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAE1asLd72MxM63QEfRpo_oUMt0bG9o5sA',
    appId: '1:801389172341:android:98af80866e631b2b8aca3c',
    messagingSenderId: '801389172341',
    projectId: 'shayaan-eform-demo-db',
    databaseURL: 'https://shayaan-eform-demo-db-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'shayaan-eform-demo-db.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBIWMvKncZNeElnMiNQxP50tsRC7cPFWyw',
    appId: '1:801389172341:ios:aa82842ab477c5f48aca3c',
    messagingSenderId: '801389172341',
    projectId: 'shayaan-eform-demo-db',
    databaseURL: 'https://shayaan-eform-demo-db-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'shayaan-eform-demo-db.appspot.com',
    iosClientId: '801389172341-8n68oghsfto7gid17uom7c66huug2h0k.apps.googleusercontent.com',
    iosBundleId: 'com.example.eformTestproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBIWMvKncZNeElnMiNQxP50tsRC7cPFWyw',
    appId: '1:801389172341:ios:aa82842ab477c5f48aca3c',
    messagingSenderId: '801389172341',
    projectId: 'shayaan-eform-demo-db',
    databaseURL: 'https://shayaan-eform-demo-db-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'shayaan-eform-demo-db.appspot.com',
    iosClientId: '801389172341-8n68oghsfto7gid17uom7c66huug2h0k.apps.googleusercontent.com',
    iosBundleId: 'com.example.eformTestproject',
  );
}
