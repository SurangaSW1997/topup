import 'package:flutter/material.dart';

//about pagee
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
        toolbarHeight: height * .08,
        title: const Text("About"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: height * .92,
                    child: Opacity(
                      opacity: .2,
                      child: Image.asset(
                        "assets/01.jpeg",
                        fit: BoxFit.fitHeight,
                      ),
                    )),
                Positioned(
                  top: 0,
                  child: Container(
                    width: width,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Opacity(
                              opacity: .7,
                              child: Container(
                                color: const Color.fromRGBO(52, 73, 102, 1),
                                width: width,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: height * .02, bottom: height * .02),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: width,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(left: width * .1),
                                          child: const Text(
                                            textAlign: TextAlign.start,
                                            "Vision",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Lucida Sans'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: width,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 5,
                                              left: width * .15,
                                              right: width * .15),
                                          child: const Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 5),
                                                child: Text(
                                                  "We are doing our best to give you fastest top-up experience.",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          'Lucida Sans'),
                                                ),
                                              ),
                                              Text(
                                                "If you have any issue with our app don’t hesitate to contact our customer service from below contacts.",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontFamily: 'Lucida Sans'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .05,
                            ),
                            Opacity(
                              opacity: .7,
                              child: Container(
                                color: const Color.fromRGBO(52, 73, 102, 1),
                                width: width,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: height * .02, bottom: height * .02),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: width,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(left: width * .1),
                                          child: const Text(
                                            textAlign: TextAlign.start,
                                            "Contacts",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Lucida Sans'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: width,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 5,
                                              left: width * .15,
                                              right: width * .15),
                                          child: const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.call,
                                                      color: Colors.blue,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "+9477 2725 807",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          fontFamily:
                                                              'Lucida Sans'),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.email,
                                                    color: Colors.blue,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    "fftopupapp@gmail.com",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontFamily:
                                                            'Lucida Sans'),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .05,
                            ),
                            Opacity(
                              opacity: .7,
                              child: Container(
                                color: const Color.fromRGBO(52, 73, 102, 1),
                                width: width,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: height * .02, bottom: height * .02),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: width,
                                        child: Padding(
                                          padding:
                                              EdgeInsets.only(left: width * .1),
                                          child: const Text(
                                            textAlign: TextAlign.start,
                                            "Others",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Lucida Sans'),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        width: width,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 5,
                                              left: width * .15,
                                              right: width * .15),
                                          child: const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 5),
                                                child: Text(
                                                  "Privacy Policy",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          'Lucida Sans'),
                                                ),
                                              ),
                                              Text(
                                                "Terms & Conditions",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontFamily: 'Lucida Sans'),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
