import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:topup/homepage.dart';
import 'package:topup/loginpage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _obsecureText = true;
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  String _email = "";
  String _password = "";
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
                    SizedBox(
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
                            child: const Icon(Icons.person_outline_outlined),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: width * .75,
                            child: Opacity(
                              opacity: .5,
                              child: Padding(
                                padding: EdgeInsets.only(right: width * .13),
                                child: const TextField(
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "name"),
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
                            child: const Icon(Icons.alternate_email_rounded),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: width * .75,
                            child: Opacity(
                              opacity: .5,
                              child: Padding(
                                padding: EdgeInsets.only(right: width * .13),
                                child: TextFormField(
                                  controller: _emailTextController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "email"),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please eenter your email";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      _email = value;
                                    });
                                  },
                                  style: const TextStyle(
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
                            child: const Icon(Icons.call_outlined),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: width * .75,
                            child: Opacity(
                              opacity: .5,
                              child: Padding(
                                padding: EdgeInsets.only(right: width * .13),
                                child: const TextField(
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "phone"),
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
                            child: const Icon(Icons.lock_outline_rounded),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: width * .65,
                            child: Opacity(
                              opacity: .5,
                              child: Padding(
                                padding: EdgeInsets.only(right: width * .03),
                                child: TextFormField(
                                  obscureText: _obsecureText,
                                  controller: _passwordTextController,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "password"),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Enter your password";
                                    } else {
                                      return null;
                                    }
                                  },
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
                                    _obsecureText = !_obsecureText;
                                  });
                                },
                                child:
                                    const Icon(Icons.remove_red_eye_outlined)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * .03,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * .22),
                      child: SizedBox(
                        height: height * .05,
                        width: width * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an Account?",
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
                                      builder: (context) => const LogIn()),
                                );
                              },
                              child: const Text(
                                " Log In",
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
