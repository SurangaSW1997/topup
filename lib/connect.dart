import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:topup/errorpage.dart';
import 'package:topup/homepage.dart';
import 'package:topup/signuppage.dart';

class Connect extends StatelessWidget {
  const Connect({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasData) {
                return const HomePage();
              } else if (snapshot.hasError) {
                return const ErrorLog();
              } else {
                return const SignUp();
              }
            }),
      );
}
