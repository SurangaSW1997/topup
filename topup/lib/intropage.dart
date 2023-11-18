import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(),
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
