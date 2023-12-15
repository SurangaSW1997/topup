import 'package:flutter/material.dart';
import 'package:topup/loginpage.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
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
                      child: const Center(
                          child: Text(
                        "Create Account",
                        style: TextStyle(
                            fontFamily: 'Lucida Sans',
                            fontSize: 40,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  Container(
                    width: width * .9,
                    height: height * .03,
                    child: const Text(
                      "Sign Up for get started",
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
                          alignment: Alignment.center,
                          width: width * .15,
                          child: Icon(Icons.person_outline_outlined),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: width * .75,
                          child: const Opacity(
                            opacity: .5,
                            child: Text(
                              "name",
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
                          alignment: Alignment.center,
                          width: width * .15,
                          child: Icon(Icons.alternate_email_rounded),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: width * .75,
                          child: const Opacity(
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
                          alignment: Alignment.center,
                          width: width * .15,
                          child: Icon(Icons.call_outlined),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: width * .75,
                          child: const Opacity(
                            opacity: .5,
                            child: Text(
                              "phone",
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
                          alignment: Alignment.center,
                          child: Icon(Icons.lock_outline_rounded),
                          width: width * .15,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: width * .65,
                          child: const Opacity(
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
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.remove_red_eye_outlined),
                          width: width * .1,
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
                          alignment: Alignment.center,
                          child: Icon(Icons.lock_outline_rounded),
                          width: width * .15,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: width * .65,
                          child: const Opacity(
                            opacity: .5,
                            child: Text(
                              "confirm password",
                              style: TextStyle(
                                fontFamily: 'Lucida Sans',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.remove_red_eye_outlined),
                          width: width * .1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * .03,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(0, 87, 255, 1),
                        borderRadius: BorderRadius.circular(20)),
                    width: width * .9,
                    height: height * .06,
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Lora',
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * .22),
                    child: Container(
                      height: height * .05,
                      width: width * .9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              "Already have an Account?",
                              style: TextStyle(
                                  fontFamily: 'Lucida Sans',
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LogIn()),
                              );
                            },
                            child: Container(
                              child: Text(
                                " Log In",
                                style: TextStyle(
                                    fontFamily: 'Lucida Sans',
                                    fontSize: 16,
                                    color: const Color.fromRGBO(0, 87, 255, 1)),
                              ),
                            ),
                          ),
                        ],
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
