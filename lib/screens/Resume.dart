import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chat'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
            icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}
