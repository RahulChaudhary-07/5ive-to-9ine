import 'package:flutter/material.dart';
import 'package:internship_5to9_1/screens/SignUpScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => SignUpScreen()),
                        ),
                      );
                    },
                    icon: Icon(Icons.arrow_back)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 30),
              child: Column(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 26,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Divider(
                    color: Colors.black87,
                    thickness: 2,
                  ),
                  Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                          hintText: 'Username',
                          labelText: "Username",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
