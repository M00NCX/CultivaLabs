import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBylhpjPMlXU65oL7jeD_ToJMmujM43Gbk",
            authDomain: "cultivalabs-3bade.firebaseapp.com",
            projectId: "cultivalabs-3bade",
            storageBucket: "cultivalabs-3bade.appspot.com",
            messagingSenderId: "580577715762",
            appId: "1:580577715762:web:5a8c5d5e9ea485753e3e2b",
            measurementId: "G-6VCSZSSXQ4"));
  } else {
    await Firebase.initializeApp();
  }
}
