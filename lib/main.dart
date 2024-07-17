import 'package:firebase_connect/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
////////

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCQ-wvsLaZwspICojAeGPk86w-utSZ2Qtg",
            authDomain: "fir-connect-ab927.firebaseapp.com",
            projectId: "fir-connect-ab927",
            storageBucket: "fir-connect-ab927.appspot.com",
            messagingSenderId: "172118717248",
            appId: "1:172118717248:web:070598789892a9321880a5"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
