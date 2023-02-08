import 'package:flutter/material.dart';

class NearbyJobWidget extends StatefulWidget {
  const NearbyJobWidget({super.key});

  @override
  State<NearbyJobWidget> createState() => _NearbyJobWidgetState();
}

class _NearbyJobWidgetState extends State<NearbyJobWidget> {
  final jobs = [
    Job(
      type: 'Delivery',
      duration: 'Full Time',
      money: '\$55/h',
    ),
    Job(
      type: 'Sweeper',
      money: '\$100/h',
      duration: 'Full Time',
    ),
    Job(
      type: 'Product Designer',
      money: '\$70/h',
      duration: 'Full Time',
    ),
    Job(
      type: 'Chef',
      money: '\$20/h',
      duration: 'Part Time',
    ),
    Job(
      type: 'Worker',
      money: '\$45/h',
      duration: 'Full Time',
    ),
    Job(
      type: 'Labour',
      money: '\$50/h',
      duration: 'Part Time',
    ),
    Job(
      type: 'Receptionist',
      money: '\$10/h',
      duration: 'Full Time',
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
          Padding(padding: EdgeInsets.all(14)),
          Icon(
            Icons.computer,
            size: 20,
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
              SizedBox(
                height: 5,
              ),
              Text(
                job.duration,
                style: TextStyle(
                  backgroundColor: Colors.grey.shade200,
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
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 80),
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
  final String duration;
  final String money;

  Job({
    required this.type,
    required this.duration,
    required this.money,
  });
}
