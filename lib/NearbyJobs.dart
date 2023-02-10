import 'package:flutter/material.dart';

class NearbyJobWidget extends StatefulWidget {
  const NearbyJobWidget({super.key});

  @override
  State<NearbyJobWidget> createState() => _NearbyJobWidgetState();
}

class _NearbyJobWidgetState extends State<NearbyJobWidget> {
  final jobs = [
    Job(
      type: 'Delivery Boy',
      company: 'Blue Dart',
      money: '\$55/h',
      image: 'assets/NearbyJob/delivery.png',
      time: 'Full Time',
      location: 'Bharuch,Gujarat',
    ),
    Job(
      type: 'Sweeper',
      money: '\$100/D',
      company: 'BMC',
      image: "assets/NearbyJob/sweeper.png",
      time: 'Part Time',
      location: 'Baroda,Gujarat',
    ),
    Job(
      type: 'Product Designer',
      money: '\$70/D',
      company: 'Aim2Excel',
      image: "assets/NearbyJob/coder.png",
      time: 'Full Time',
      location: 'Netrang,Gujarat',
    ),
    Job(
      type: 'Chef',
      money: '\$20/D',
      company: 'Gogi Ka Dhaba',
      image: "assets/NearbyJob/hotel.png",
      time: 'Part Time',
      location: 'Palej,Gujarat',
    ),
    Job(
      type: 'Waiter',
      money: '\$45/D',
      company: 'LaPinoz',
      image: "assets/NearbyJob/technician.png",
      time: 'Full Time',
      location: 'Ankleshwar,Gujarat',
    ),
    Job(
      type: 'Labour',
      money: '\$50/D',
      company: 'Godrej',
      image: "assets/NearbyJob/worker.png",
      time: 'Part Time',
      location: 'Valia,Gujarat',
    ),
    Job(
      type: 'Receptionist',
      money: '\$10/D',
      company: 'DMart',
      image: "assets/NearbyJob/driver.png",
      time: 'Full Time',
      location: 'Vadodara,Gujarat',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: jobs.length,
      scrollDirection: Axis.vertical,
      itemBuilder: ((context, index) => NearbyJobCard(
            job: jobs[index],
          )),
    );
  }
}

class NearbyJobCard extends StatelessWidget {
  const NearbyJobCard({
    Key? key,
    required this.job,
  }) : super(key: key);

  final Job job;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 6.0,
        horizontal: 16,
      ),
      height: 90,
      width: 300,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Image.asset(
            job.image,
            height: 40,
            width: 40,
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                job.type,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                job.company,
                style: TextStyle(
                  backgroundColor: Colors.grey.shade100,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Text(
                job.location,
                style: TextStyle(
                  backgroundColor: Colors.grey.shade100,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 50),
              ),
              Text(
                job.time,
                style: TextStyle(
                  backgroundColor: Colors.grey.shade100,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                job.money,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50, right: 10),
            child: Icon(
              Icons.bookmark_border_outlined,
              size: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class Job {
  final String type;
  final String company;
  final String money;
  final String image;
  final String time;
  final String location;
  Job({
    required this.type,
    required this.company,
    required this.money,
    required this.image,
    required this.time,
    required this.location,
  });
}
