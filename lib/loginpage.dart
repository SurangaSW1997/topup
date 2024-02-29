// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:topup/signuppage.dart';

//loginn
class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  String _email = "";
  String _password = "";

  void _loginWidget() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: _email, password: _password);
    } catch (e) {
      print("Error during Login: $e ");
    }
  }

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
                child: Form(
                  key: _formkey,
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
                                  child: TextFormField(
                                    controller: _emailController,
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
                                  child: TextFormField(
                                    obscureText: _obscureText,
                                    controller: _passwordController,
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
                                    onChanged: (value) {
                                      setState(() {
                                        _password = value;
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
                            Container(
                              alignment: Alignment.centerLeft,
                              width: width * .1,
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: const Icon(
                                      Icons.remove_red_eye_outlined)),
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
                          if (_formkey.currentState!.validate()) {
                            _loginWidget();
                          }
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
