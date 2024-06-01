
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'src/ui/login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

   await Firebase.initializeApp(
  options: const FirebaseOptions(
      apiKey: "AIzaSyCBYQSiIK1gGp1qBZFhVulgycYblFVzUAY",
      appId: "1:411963024008:android:aa056899d7cfe03959f53d",
      messagingSenderId: "411963024008",
      projectId: "signup-login-d8214")
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 24.0,
            ),
            padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 46.0,
            color: Colors.blue.shade700,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: const TextStyle(fontSize: 18.0),
        ),
      ),
      home: LoginScreen(),
    );
  }
}


