import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(16, 23, 37, 1),
        toolbarHeight: height * .08,
        title: const Text("Game"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: width,
                    height: height * .32,
                    child: Opacity(
                      opacity: .7,
                      child: Image.asset(
                        "assets/022.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      child: SizedBox(
                    width: width,
                    height: height * .32,
                    child: Center(
                        child: Text(
                      user.displayName!,
                      style: TextStyle(color: Colors.white),
                    )),
                  ))
                ],
              ),
              SizedBox(
                height: height * .02,
              ),
              SizedBox(
                height: height * .04,
                width: width * .9,
                child: Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                  size: height * .04,
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
                child: Opacity(
                  opacity: 1,
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: width * .1, right: width * .1),
                    child: TextField(
                      textAlign: TextAlign.center,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Your UID",
                      ),
                      style: const TextStyle(
                        fontFamily: 'Lucida Sans',
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
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
                height: height * .06,
                width: width * .5,
                child: const Center(
                  child: Text(
                    "Participate",
                    style: TextStyle(
                        fontFamily: 'Lucida Sans',
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: height * .02,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: width * .1),
                  child: const Text(
                    "Instruction",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 87, 255, 1), fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: height * .01,
              ),
              Container(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * .15, right: width * .15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "We select 3 winners in each week. If you think you are lucky enough to win, you can enter your UID above field and  click on participate to enter the game.",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      const Text(
                        "You can only participate once a week.",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        height: height * .01,
                      ),
                      const Text(
                        "Each winner will receive a weekly membership within a day after select winners.",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * .06,
              ),
              Container(
                alignment: Alignment.center,
                width: width,
                child: const Text(
                  "Click Here to See Results",
                  style: TextStyle(color: Colors.white, fontSize: 18, shadows: [
                    Shadow(
                        offset: Offset(2, 2), color: Colors.blue, blurRadius: 3)
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
