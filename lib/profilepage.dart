import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:topup/googlesignin.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
        toolbarHeight: height * .08,
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: Container(
        width: width,
        child: Center(
          child: GestureDetector(
            onTap: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.logout();
            },
            child: Container(
              color: Colors.white,
              width: width * .4,
              child: Text("Log Out"),
            ),
          ),
        ),
      ),
    );
  }
}
