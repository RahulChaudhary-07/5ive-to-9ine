import 'package:flutter/material.dart';
import 'package:internship_5to9_1/NearbyJobs.dart';
import 'package:internship_5to9_1/PopularJob.dart' hide Job;
import 'package:internship_5to9_1/BottomNavBar.dart';
import 'package:internship_5to9_1/controllers/favourite_controller.dart';
import 'package:internship_5to9_1/screens/Profile.dart';
import 'package:internship_5to9_1/screens/Resume.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final tabs = [
    HomeTab(),
    FavScreen(),
    Resume(),
    Profile(),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey,
        body: tabs[index],
        bottomNavigationBar: BottomNavBar(
          onChange: (i) {
            index = i;
            setState(() {});
          },
        ),
      ),
    );
  }
}

class FavScreen extends StatefulWidget {
  const FavScreen({
    super.key,
  });

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  final List<Job> jobs = [];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      loadJobs();
    });
  }

  Future<void> loadJobs() async {
    final j = await FavouriteController.instance.fetch();
    jobs.clear();
    jobs.addAll(j);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jobs.length,
      itemBuilder: (context, index) => NearbyJobCard(job: jobs[index]),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 10),
            child: Text(
              "Hello, Buddy",
              style: TextStyle(
                color: Colors.black,
                // fontWeight: FontWeight.w400,
                fontSize: 20,
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
    );
  }
}
