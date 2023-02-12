import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.onChange});

  final Function(int) onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: GNav(
          activeColor: Colors.white,
          backgroundColor: Colors.white,
          tabBackgroundColor: Colors.black87,
          onTabChange: onChange,
          padding: EdgeInsets.all(14),
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.description_outlined,
              text: 'Resume',
            ),
            GButton(
              icon: Icons.person_outline_sharp,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
