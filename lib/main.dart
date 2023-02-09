import 'package:flutter/material.dart';
import 'package:penilaian/page/auth/login-page.dart';
import 'package:penilaian/page/home/home-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageGU(),
    );
  }
}
