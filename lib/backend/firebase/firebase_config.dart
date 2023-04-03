import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAzW8C5W7FQmksrpcXAEXw-_Lpn3zv8IKw",
            authDomain: "natureldisaster-7eb58.firebaseapp.com",
            projectId: "natureldisaster-7eb58",
            storageBucket: "natureldisaster-7eb58.appspot.com",
            messagingSenderId: "583751175329",
            appId: "1:583751175329:web:98b0e2a1cc350fc055b4e0",
            measurementId: "G-K3NGEH3LMX"));
  } else {
    await Firebase.initializeApp();
  }
}
