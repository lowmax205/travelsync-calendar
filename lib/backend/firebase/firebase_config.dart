import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCcC7MCNTI3hDWy3j3OF1-G8bxFw5Q4PFQ",
            authDomain: "travel-sync-r8amdb.firebaseapp.com",
            projectId: "travel-sync-r8amdb",
            storageBucket: "travel-sync-r8amdb.firebasestorage.app",
            messagingSenderId: "62565082103",
            appId: "1:62565082103:web:47ff384e6131e69c3104f2"));
  } else {
    await Firebase.initializeApp();
  }
}
