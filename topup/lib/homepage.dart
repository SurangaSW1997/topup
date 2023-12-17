import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 15, 39, 1),
      body: SingleChildScrollView(
        child: Column(
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
                  child: Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: width * .3,
                                    child: Icon(
                                      Icons.store,
                                      color: Colors.white,
                                      size: width * .15,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Top Up",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Lucida Sans"),
                                    ),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  borderRadius: BorderRadius.circular(20)),
                              width: width * .4,
                              height: height * .15,
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            Container(
                              color: Colors.amber,
                              width: width * .4,
                              height: height * .15,
                            )
                          ],
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Column(
                          children: [
                            Container(
                              color: Colors.amber,
                              width: width * .4,
                              height: height * .15,
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            Container(
                              color: Colors.amber,
                              width: width * .4,
                              height: height * .15,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
