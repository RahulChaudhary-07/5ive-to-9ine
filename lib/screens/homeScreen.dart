import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   leading: IconButton(
        //       onPressed: () {
        //         Navigator.pop(
        //           context,
        //           MaterialPageRoute(
        //             builder: ((context) => SignUpScreen()),
        //           ),
        //         );
        //       },
        //       icon: Icon(Icons.arrow_back)),
        // ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 16.0, bottom: 10),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                height: 30,
                width: 130,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 222, 220, 220),
                  border: Border.all(color: Color.fromARGB(255, 218, 214, 214), width: 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Hello, Rahul",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 6.0),
              child: Text(
                "Search, Choose & Apply",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        // body: Center(
        //   child: Container(
        //     child: ElevatedButton(
        //         onPressed: () {
        //           Navigator.pop(
        //             context,
        //             MaterialPageRoute(
        //               builder: ((context) => SignUpScreen()),
        //             ),
        //           );
        //         },
        //         child: Text("Simon Go Back")),
        //   ),
        // ),
      ),
    );
  }
}
