import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:topup/aboutpage.dart';
import 'package:topup/gamepage.dart';
import 'package:topup/homepage.dart';
import 'package:topup/profilepage.dart';
import 'package:topup/topuppage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  List<Widget> pages = [
    const HomePage(),
    const GamePage(),
    const TopUpPage(),
    const AboutPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color.fromRGBO(3, 15, 39, 1),
      body: pages[index],
      bottomNavigationBar: FloatingNavbar(
        width: width,
        backgroundColor: const Color.fromRGBO(3, 15, 39, 1),
        onTap: (int value) {
          setState(() => index = value);
        },
        currentIndex: index,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.games, title: 'Game'),
          FloatingNavbarItem(icon: Icons.store, title: 'Top Up'),
          FloatingNavbarItem(icon: Icons.info, title: 'About'),
          FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
        ],
      ),
    );
  }
}
