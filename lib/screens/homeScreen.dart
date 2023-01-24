import 'package:flutter/material.dart';
import 'package:internship_5to9_1/screens/loginScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => LoginScreen()),
                  ),
                );
              },
              child: Text("Simon Go Back")),
        ),
      ),
    );
  }
}
