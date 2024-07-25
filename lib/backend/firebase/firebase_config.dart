import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCLxusQ1D7Tx0-xr_28-FoNNmBgmkWE3uw",
            authDomain: "footballapp-ac534.firebaseapp.com",
            projectId: "footballapp-ac534",
            storageBucket: "footballapp-ac534.appspot.com",
            messagingSenderId: "42657793265",
            appId: "1:42657793265:web:3f1f92eadf624861fdd550"));
  } else {
    await Firebase.initializeApp();
  }
}
