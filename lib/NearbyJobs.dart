// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:internship_5to9_1/controllers/favourite_controller.dart';
import 'package:internship_5to9_1/core/localstorage.dart';

class NearbyJobWidget extends StatefulWidget {
  const NearbyJobWidget({super.key});

  @override
  State<NearbyJobWidget> createState() => _NearbyJobWidgetState();
}

class _NearbyJobWidgetState extends State<NearbyJobWidget> {
  final jobs = [
    Job(
      id: 1,
      type: 'Delivery Boy',
      company: 'Blue Dart',
      money: '\$55/h',
      image: 'assets/NearbyJob/delivery.png',
      time: 'Full Time',
      location: 'Bharuch,Gujarat',
    ),
    Job(
      id: 2,
      type: 'Sweeper',
      money: '\$100/D',
      company: 'BMC',
      image: "assets/NearbyJob/sweeper.png",
      time: 'Part Time',
      location: 'Baroda,Gujarat',
    ),
    Job(
      id: 3,
      type: 'Product Designer',
      money: '\$70/D',
      company: 'Aim2Excel',
      image: "assets/NearbyJob/coder.png",
      time: 'Full Time',
      location: 'Netrang,Gujarat',
    ),
    Job(
      id: 4,
      type: 'Chef',
      money: '\$20/D',
      company: 'Gogi Ka Dhaba',
      image: "assets/NearbyJob/hotel.png",
      time: 'Part Time',
      location: 'Palej,Gujarat',
    ),
    Job(
      id: 5,
      type: 'Waiter',
      money: '\$45/D',
      company: 'LaPinoz',
      image: "assets/NearbyJob/technician.png",
      time: 'Full Time',
      location: 'Ankleshwar,Gujarat',
    ),
    Job(
      id: 6,
      type: 'Labour',
      money: '\$50/D',
      company: 'Godrej',
      image: "assets/NearbyJob/worker.png",
      time: 'Part Time',
      location: 'Valia,Gujarat',
    ),
    Job(
      id: 7,
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

class NearbyJobCard extends StatefulWidget {
  const NearbyJobCard({
    Key? key,
    required this.job,
  }) : super(key: key);

  final Job job;

  @override
  State<NearbyJobCard> createState() => _NearbyJobCardState();
}

class _NearbyJobCardState extends State<NearbyJobCard> {
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
            widget.job.image,
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
                widget.job.type,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.job.company,
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
                widget.job.location,
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
                widget.job.time,
                style: TextStyle(
                  backgroundColor: Colors.grey.shade100,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.job.money,
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
            child: GestureDetector(
              onTap: () async {
                if (FavouriteController.instance.isFavourite(widget.job.id)) {
                  await FavouriteController.instance.removeJob(widget.job);
                } else {
                  await FavouriteController.instance.addJob(widget.job);
                }
                setState(() {});
              },
              child: Icon(
                FavouriteController.instance.isFavourite(widget.job.id)
                    ? Icons.bookmark_outlined
                    : Icons.bookmark_border_outlined,
                size: 20,
                color: Colors.black,
              ),
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
  final int id;

  Job({
    required this.type,
    required this.company,
    required this.money,
    required this.image,
    required this.time,
    required this.id,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'company': company,
      'money': money,
      'image': image,
      'time': time,
      'location': location,
      'id': id,
    };
  }

  factory Job.fromMap(Map<String, dynamic> map) {
    return Job(
      type: map['type'] as String,
      company: map['company'] as String,
      money: map['money'] as String,
      image: map['image'] as String,
      time: map['time'] as String,
      location: map['location'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Job.fromJson(String source) => Job.fromMap(json.decode(source) as Map<String, dynamic>);
}
