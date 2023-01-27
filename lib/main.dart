import 'package:flutter/material.dart';
import 'package:internship_5to9_1/screens/SignInScreen.dart';
import 'package:internship_5to9_1/screens/homeScreen.dart';
import 'package:internship_5to9_1/screens/SignUpScreen.dart';
import 'package:internship_5to9_1/screens/splashScreen.dart';
import 'package:internship_5to9_1/theme/theme.dart';

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
      debugShowCheckedModeBanner: false,
      theme: getMaterialApp(context),
      // themeMode: ThemeMode.dark,
      // darkTheme: ThemeData.dark(),
      initialRoute: '/initial',
      routes: {
        '/initial': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
      },
      home: SignUpScreen(),
    );
  }
}
