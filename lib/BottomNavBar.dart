import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.onChange});

  final Function(int) onChange;

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: onChange,
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
          icon: Icons.search,
          text: 'Search',
        ),
        GButton(
          icon: Icons.person_outline_sharp,
          text: 'Profile',
        ),
      ],
    );
  }
}
