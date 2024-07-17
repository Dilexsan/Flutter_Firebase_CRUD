import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Firebase App",
        style: TextStyle(color: Colors.blue),
      )),
      body: Column(
        children: [
          Text("this is the title of the body"),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "button",
                style: TextStyle(
                  color: Color.fromARGB(255, 160, 31, 31),
                ),
              ),
            ),
          ),
          BackButton(
            onPressed: () {
              print("clicked back arrow button");
            },
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
