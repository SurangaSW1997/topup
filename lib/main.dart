import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:topup/bottomnavbar.dart';
import 'package:topup/gamepage.dart';

import 'package:topup/homepage.dart';

import 'package:topup/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GamePage(),
    );
  }
}
