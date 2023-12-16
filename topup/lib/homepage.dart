import 'package:flutter/material.dart';
import 'package:topup/bottomnavbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 15, 39, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Opacity(
                opacity: .8,
                child: SizedBox(
                  height: height * .6,
                  child: Image.asset(
                    "assets/03.jpeg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              Expanded(
                flex: 18,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
          BottomNavBar(),
        ],
      ),
    );
  }
}
