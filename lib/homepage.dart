import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:topup/aboutpage.dart';
import 'package:topup/gamepage.dart';
import 'package:topup/profilepage.dart';
import 'package:topup/topuppage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
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
                ),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TopUpPage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                width: width * .4,
                                height: height * .15,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                      child: const Text(
                                        "Top Up",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Lucida Sans"),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutPage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                width: width * .4,
                                height: height * .15,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: width * .3,
                                      child: Icon(
                                        Icons.info,
                                        color: Colors.white,
                                        size: width * .15,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "About",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Lucida Sans"),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: width * .1,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => GamePage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                width: width * .4,
                                height: height * .15,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: width * .3,
                                      child: Icon(
                                        Icons.games,
                                        color: Colors.white,
                                        size: width * .15,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "Game",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Lucida Sans"),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .02,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfilePage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(20)),
                                width: width * .4,
                                height: height * .15,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: width * .3,
                                      child: Icon(
                                        Icons.person,
                                        color: Colors.white,
                                        size: width * .15,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "Profile",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Lucida Sans"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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
