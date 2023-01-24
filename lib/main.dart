import 'package:flutter/material.dart';
import 'package:internship_5to9_1/screens/loginScreen.dart';
import 'package:internship_5to9_1/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      home: LoginScreen(),
    );
  }
}
