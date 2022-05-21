import 'package:diet_app/bottomnav.dart';
import 'package:diet_app/login_screen.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'bottomnav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wellmore App',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: LoginScreen(),

    );

  }
}
