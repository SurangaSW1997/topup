import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
        toolbarHeight: height * .08,
        title: const Text("Game"),
        centerTitle: true,
      ),
      body: Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: width,
                  height: height * .32,
                  child: Opacity(
                    opacity: .7,
                    child: Image.asset(
                      "assets/022.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    top: 0,
                    child: Container(
                      child: Text("data"),
                    ))
              ],
            ),
            Container(
              width: width * .9,
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 161, 155, 136),
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              width: width * .9,
              child: TextField(
                  decoration: InputDecoration(border: InputBorder.none)),
            ),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
