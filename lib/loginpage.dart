import 'package:flutter/material.dart';
import 'package:topup/bottomnavbar.dart';

import 'package:topup/signuppage.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 18,
              child: SizedBox(
                width: width * .9,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * .05),
                      child: SizedBox(
                        width: width * .9,
                        height: height * .1,
                        child: const Center(
                            child: Text(
                          "Welcome Back",
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
                    SizedBox(
                      width: width * .9,
                      height: height * .03,
                      child: const Text(
                        "Enter your credentials to continue",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lucida Sans',
                            fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: height * .03,
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
                            child: const Icon(Icons.alternate_email_rounded),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: width * .75,
                            child: Opacity(
                              opacity: .5,
                              child: Padding(
                                padding: EdgeInsets.only(right: width * .13),
                                child: const TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'email',
                                    // Set the hint text
                                    // Optional border styling
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Lucida Sans',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .03,
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
                            child: const Icon(Icons.lock_outline_rounded),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: width * .65,
                            child: Opacity(
                              opacity: .5,
                              child: Padding(
                                padding: EdgeInsets.only(right: width * .03),
                                child: TextField(
                                  obscureText: _obscureText,
                                  controller: _passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "password"),
                                  style: const TextStyle(
                                    fontFamily: 'Lucida Sans',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: width * .1,
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child:
                                    const Icon(Icons.remove_red_eye_outlined)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: width * .9,
                      child: Padding(
                        padding: EdgeInsets.only(right: width * .02),
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 87, 255, 1),
                              fontFamily: 'Lucida Sans',
                              fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .04,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                // ignore: prefer_const_constructors
                                builder: (context) => BottomNavBar()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 87, 255, 1),
                            borderRadius: BorderRadius.circular(20)),
                        width: width * .9,
                        height: height * .06,
                        child: const Center(
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Lora',
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * .9,
                      height: height * .1,
                      child: const Center(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/google.png",
                            width: 30,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Continue with Google",
                            style: TextStyle(
                                fontFamily: 'Lora',
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * .24),
                      child: SizedBox(
                        height: height * .05,
                        width: width * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an Account?",
                              style: TextStyle(
                                  fontFamily: 'Lucida Sans',
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()),
                                );
                              },
                              child: const Text(
                                " Sign Up",
                                style: TextStyle(
                                    fontFamily: 'Lucida Sans',
                                    fontSize: 16,
                                    color: Color.fromRGBO(0, 87, 255, 1)),
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
      ),
    );
  }
}
