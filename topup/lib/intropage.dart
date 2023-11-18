import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/ff.jpg"), fit: BoxFit.cover),
              ),
              width: screenwidth * .5,
            ),
            Container(
              child: Text("Top Up"),
            ),
            Container(
              child: Text("Easy & Faster"),
            ),
            Container(
              child: Text("Log In"),
            ),
            Container(
              child: Text("Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
