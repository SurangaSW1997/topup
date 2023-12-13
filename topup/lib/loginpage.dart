import 'dart:ffi';

import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(16, 23, 37, 1),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 18,
            child: Container(
              width: width * .9,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: height * .05),
                    child: Container(
                      width: width * .9,
                      height: height * .1,
                      child: Center(
                          child: Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontFamily: 'Lucida Sans',
                            fontSize: 40,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  Container(
                    width: width * .9,
                    height: height * .03,
                    child: Text(
                      "Enter your credentials to continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lucida Sans',
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(71, 71, 71, 1),
                        borderRadius: BorderRadius.circular(20)),
                    width: width * .9,
                    height: height * .06,
                    child: Row(
                      children: [
                        Container(
                          width: width * .15,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: width * .75,
                          child: Opacity(
                            opacity: .5,
                            child: Text(
                              "email",
                              style: TextStyle(
                                fontFamily: 'Lucida Sans',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(71, 71, 71, 1),
                        borderRadius: BorderRadius.circular(20)),
                    width: width * .9,
                    height: height * .06,
                    child: Row(
                      children: [
                        Container(
                          width: width * .15,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: width * .75,
                          child: Opacity(
                            opacity: .5,
                            child: Text(
                              "password",
                              style: TextStyle(
                                fontFamily: 'Lucida Sans',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: width * .9,
                    child: Padding(
                      padding: EdgeInsets.only(right: width * .02),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 87, 255, 1),
                            fontFamily: 'Lucida Sans',
                            fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 87, 255, 1),
                        borderRadius: BorderRadius.circular(20)),
                    width: width * .9,
                    height: height * .06,
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Lora',
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: width * .9,
                    height: height * .06,
                    child: Center(
                        child: Text(
                      "Or",
                      style: TextStyle(
                          fontFamily: 'Lora',
                          fontSize: 16,
                          color: Colors.white),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    width: width * .9,
                    height: height * .06,
                    child: Center(
                      child: Text(
                        "Continue with Google",
                        style: TextStyle(
                            fontFamily: 'Lora',
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * .38),
                    child: Container(
                      height: height * .05,
                      width: width * .9,
                      child: Center(
                        child: Text(
                          "Don't have an Account? Sign Up",
                          style: TextStyle(
                              fontFamily: 'Lucida Sans',
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      ),
                    ),
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
    );
  }
}
