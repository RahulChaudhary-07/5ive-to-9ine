import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  final jobs = [
    Job(
      image: 'assets/PopularJob/1.png',
      type: 'Product Designer',
      money: '700/h',
      duration: 'Full Time',
    ),
    Job(
      image: 'assets/PopularJob/2.png',
      type: 'Chef',
      money: '200/h',
      duration: 'Part Time',
    ),
    Job(
      image: 'assets/PopularJob/3.png',
      type: 'Sweeper',
      money: '1000/h',
      duration: 'Full Time',
    ),
    Job(
      image: 'assets/PopularJob/4.png',
      type: 'Driver',
      money: '500/h',
      duration: 'Part Time',
    ),
    Job(
      image: 'assets/PopularJob/5.png',
      type: 'Labour',
      money: '500/h',
      duration: 'Part Time',
    ),
    Job(
      image: 'assets/PopularJob/6.png',
      type: 'Receptionist',
      money: '100/h',
      duration: 'Full Time',
    ),
    Job(
      image: 'assets/PopularJob/7.png',
      type: 'Worker',
      money: '450/h',
      duration: 'Full Time',
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

class JobCard extends StatelessWidget {
  const JobCard({
    Key? key,
    required this.job,
  }) : super(key: key);
  final Job job;
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
              job.image,
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
                    job.type,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.favorite_outline_sharp,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    job.duration,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    job.money,
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

class Job {
  final String image;
  final String type;
  final String money;
  final String duration;

  Job({
    required this.image,
    required this.type,
    required this.money,
    required this.duration,
  });
}
