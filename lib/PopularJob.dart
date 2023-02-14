import 'package:flutter/material.dart';
import 'package:internship_5to9_1/NearbyJobs.dart';

import 'controllers/favourite_controller.dart';

class StackWidget extends StatefulWidget {
  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  final jobs = [
    Job(id: 8, image: 'assets/PopularJob/1.png', type: 'Product Designer', money: '700/h', time: 'Full Time', location: '', company: ''),
    Job(
      id: 9,
      image: 'assets/PopularJob/2.png',
      type: 'Chef',
      money: '200/h',
      time: 'Part Time',
      company: '',
      location: '',
    ),
    Job(
      id: 10,
      image: 'assets/PopularJob/3.png',
      type: 'Sweeper',
      money: '1000/h',
      time: 'Full Time',
      company: '',
      location: '',
    ),
    Job(
      id: 11,
      image: 'assets/PopularJob/4.png',
      type: 'Driver',
      money: '500/h',
      time: 'Part Time',
      company: '',
      location: '',
    ),
    Job(
      id: 12,
      image: 'assets/PopularJob/5.png',
      type: 'Labour',
      money: '500/h',
      time: 'Part Time',
      company: '',
      location: '',
    ),
    Job(
      id: 13,
      image: 'assets/PopularJob/6.png',
      type: 'Receptionist',
      money: '100/h',
      time: 'Full Time',
      company: '',
      location: '',
    ),
    Job(
      id: 14,
      image: 'assets/PopularJob/7.png',
      type: 'Worker',
      money: '450/h',
      time: 'Full Time',
      company: '',
      location: '',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        itemCount: jobs.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => JobCard(
              job: jobs[index],
            )),
      ),
    );
  }
}

class JobCard extends StatefulWidget {
  const JobCard({
    Key? key,
    required this.job,
  }) : super(key: key);
  final Job job;

  @override
  State<JobCard> createState() => _JobCardState();
}

class _JobCardState extends State<JobCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          height: 180,
          width: 200,
          margin: EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              widget.job.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black87,
          ),
          height: 70,
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.job.type,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (FavouriteController.instance.isFavourite(widget.job.id)) {
                        await FavouriteController.instance.removeJob(widget.job);
                      } else {
                        await FavouriteController.instance.addJob(widget.job);
                      }
                      setState(() {});
                    },
                    child: Icon(
                      FavouriteController.instance.isFavourite(widget.job.id) ? Icons.bookmark_outlined : Icons.bookmark_border_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.job.time,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    widget.job.money,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

// class Job {
//   final String image;
//   final String type;
//   final String money;
//   final String duration;

//   Job({
//     required this.image,
//     required this.type,
//     required this.money,
//     required this.duration,
//   });
// }
