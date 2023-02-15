// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:penilaian/page/Jurusan/Jurusan-listPage.dart';
import 'package:penilaian/page/siswa/SiswaList.dart';
import 'package:penilaian/util/colors.dart';
import 'package:penilaian/widget/BigText.dart';
import 'package:penilaian/widget/TextStryle.dart';
import 'package:penilaian/widget/container.dart';
import 'package:penilaian/widget/header.dart';
import 'package:penilaian/widget/textField.dart';

class TaskMainPage extends StatefulWidget {
  const TaskMainPage({super.key});

  @override
  State<TaskMainPage> createState() => TaskMainPageState();
}

class TaskMainPageState extends State<TaskMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 222, 100, 187),
              Color.fromARGB(255, 226, 213, 114)
            ],
          ),
        ),
        child: Column(
          children: [
            Heder(),
            Container(color: Colors.black, width: double.maxFinite, height: 1),
            Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: TextfieldW(hint: "Cari"),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
              height: 50,
              width: double.maxFinite,
              color: AppColors.maincolor,
              alignment: Alignment.center,
              child: BigText(text: "XII RPL3", size: 20,),
            ),
            Expanded(child: SingleChildScrollView(child: SiswaList()))
          ],
        ),
      ),
    );
  }
}
