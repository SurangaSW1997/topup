import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 15, 39, 1),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: 'games',
            backgroundColor: Colors.amber),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      ]),
    );
  }
}
