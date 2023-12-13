import 'package:flutter/material.dart';

class LoginIntro extends StatelessWidget {
  const LoginIntro({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 23, 37, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: width,
                height: height * .8,
                child: Opacity(
                  opacity: .5,
                  child: Image.asset(
                    "assets/03.jpeg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Positioned(
                bottom: height * .01,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: width,
                      child: const Text(
                        "FF TopUp.",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Kavoon',
                            fontSize: 48),
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    Container(
                      width: width,
                      child: Padding(
                        padding: EdgeInsets.only(left: width * .07),
                        child: Text(
                          "Let's get started from here",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lucida Sans',
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 87, 255, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: width * .9,
                  height: height * .07,
                  child: Center(
                      child: Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Lora', fontSize: 16),
                  )),
                ),
                SizedBox(
                  height: height * .01,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: width * .9,
                  height: height * .07,
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lora',
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
