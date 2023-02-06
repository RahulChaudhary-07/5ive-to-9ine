import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 180,
          child: ListView.builder(
            itemCount: 7,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) => Container(
                  height: 50,
                  width: 200,
                  margin: EdgeInsets.all(10.0),
                  color: Colors.grey[300],
                  child: Image.asset(
                    "assets/images/loginPage_mirror.png",
                    fit: BoxFit.fill,
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
