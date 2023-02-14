import 'package:flutter/material.dart';
import 'package:internship_5to9_1/screens/HomeScreen.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.black54,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        color: Colors.black87,
        height: 100,
        width: double.maxFinite,
      ),
    );
  }
}
