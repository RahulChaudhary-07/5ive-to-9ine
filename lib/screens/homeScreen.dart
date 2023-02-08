import 'package:flutter/material.dart';
import 'package:internship_5to9_1/NearbyJobs.dart';
import 'package:internship_5to9_1/PopularJob.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 16.0, bottom: 10),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: 30,
                  width: 130,
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
                  "Find your best job.",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    suffixIcon: Icon(Icons.search),
                    hintText: 'what job are you looking for?',
                    labelText: "Search",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Popular Jobs.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              Stack(
                children: [
                  StackWidget(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Nearby Jobs.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              NearbyJobWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
