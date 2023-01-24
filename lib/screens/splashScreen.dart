import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internship_5to9_1/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => MyApp()),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "5ive to 9ine",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 25,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
