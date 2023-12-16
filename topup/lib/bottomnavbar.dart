import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Container(
                width: width * .2,
                child: Icon(Icons.home),
              ),
              Container(
                width: width * .2,
                child: Icon(Icons.gamepad),
              ),
              Container(
                width: width * .2,
                child: Icon(Icons.store),
              ),
              Container(
                width: width * .2,
                child: Icon(Icons.info),
              ),
              Container(
                width: width * .2,
                child: Icon(Icons.man),
              )
            ],
          ),
        ],
      ),
    );
  }
}
