// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:penilaian/page/Jurusan/Jurusan-listPage.dart';
import 'package:penilaian/util/colors.dart';
import 'package:penilaian/widget/TextStryle.dart';
import 'package:penilaian/widget/textField.dart';

class JurusanMainPage extends StatefulWidget {
  const JurusanMainPage({super.key});

  @override
  State<JurusanMainPage> createState() => JurusanMainPageState();
}

class JurusanMainPageState extends State<JurusanMainPage> {
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
            colors: [AppColors.backgroundcolor1, AppColors.backgroundcolor2],
          ),
        ),
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextSty(text: "E'Task", size: 25),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(Icons.logout_outlined, size: 30),
                        SizedBox(width: 20),
                        Icon(Icons.person_2_outlined, size: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(color: Colors.black, width: double.maxFinite, height: 1),
            Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: TextfieldW(hint: "Cari"),
            ),
            Expanded(child: SingleChildScrollView(child: JurusanList()))
          ],
        ),
      ),
    );
  }
}
