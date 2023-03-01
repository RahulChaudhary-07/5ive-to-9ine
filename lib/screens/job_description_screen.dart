import 'package:flutter/material.dart';

class JobDescriptionScreen extends StatefulWidget {
  const JobDescriptionScreen({super.key});

  @override
  State<JobDescriptionScreen> createState() => _JobDescriptionScreenState();
}

class _JobDescriptionScreenState extends State<JobDescriptionScreen> {
  double screenHeight = 0;
  double screenWidth = 0;

  final List<String> imageList = [
    'https://cdn.pixabay.com/photo/2017/05/24/09/13/potrait-2339935_1280.jpg',
    "https://media.istockphoto.com/id/1368424494/photo/studio-portrait-of-a-cheerful-woman.jpg?s=1024x1024&w=is&k=20&c=9eszAhNKMRzMHVp4wlmFRak8YyH3rAU8re9HjKA6h3A=",
    'https://cdn.pixabay.com/photo/2016/03/23/04/01/woman-1274056_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/06/06/17/05/woman-1439909_1280.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          _customAppbar(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Product Designer',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 14),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Airbnb',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '   • Jakarta, Indonesia',
                                      style: TextStyle(
                                        color: Colors.grey[300],
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 36,
                            width: 36,
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14),
                      Row(
                        children: [
                          Stack(
                            children: [
                              for (int i = 0; i < 4; i++)
                                Padding(
                                  padding: EdgeInsets.only(left: i * 20.0),
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundImage: NetworkImage(
                                      imageList[i],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          SizedBox(width: 14),
                          Text(
                            '4 Friends Work Here',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    _experienceWidget(
                      title: 'Experience',
                      data: 'Minimum 1 year',
                    ),
                    SizedBox(width: 20),
                    _experienceWidget(
                      title: 'Employer Type',
                      data: 'Full time jobs',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Job Description',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Job Applied Successfully',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Image.asset(
                                    'assets/images/checked.png',
                                    height: 30,
                                    width: 30,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: SizedBox.expand(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Apply',
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _experienceWidget({
    required String title,
    required String data,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 4),
            Text(
              data,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _customAppbar() {
    return Container(
      height: screenHeight / 3.2,
      color: Colors.transparent,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.asset(
              'assets/images/illustration.jpg',
              height: screenHeight / 3.8,
              fit: BoxFit.fitWidth,
              width: screenWidth,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 36,
              width: 36,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 66,
              width: 66,
              margin: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(18),
              child: Image.asset(
                'assets/images/airbnb.png',
                color: Colors.white,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
