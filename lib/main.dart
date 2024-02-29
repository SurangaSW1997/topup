import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:topup/aboutpage.dart';
import 'package:topup/gamepage.dart';
import 'package:topup/homepage.dart';
import 'package:topup/loginintropage.dart';
import 'package:topup/loginpage.dart';
import 'package:topup/profilepage.dart';
import 'package:topup/signuppage.dart';

import 'package:topup/splashscreen.dart';
import 'package:topup/topuppage.dart';

//mainn
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
