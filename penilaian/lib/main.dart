import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penilaian/page/auth/login-page.dart';
import 'package:penilaian/page/home/home-pageGU.dart';
import 'package:penilaian/page/jurusan/JurusanMainPage.dart';
import 'package:penilaian/page/task/TaskDetail.dart';
import 'package:penilaian/page/task/TaskList.dart';
import 'package:penilaian/page/task/TaskMainPage.dart';
import 'package:penilaian/routes/RouteHelper.dart';
import 'package:penilaian/page/siswa/SiswaList.dart';
import 'package:penilaian/page/siswa/SiswaMainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return GetMaterialApp(
      // debugShowCheckedModeBanner: false,
      // initialRoute: RouteHelper.getInitialPage(),
      // getPages: RouteHelper.routes,
      home: SiswaMainPage(),
      
    );
  }
}
