// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:penilaian/util/colors.dart';
import 'package:penilaian/widget/BigText.dart';
import 'package:penilaian/widget/TextStryle.dart';
import 'package:penilaian/widget/header.dart';

class HomePageGU extends StatelessWidget {
  const HomePageGU({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Heder(),
              Container(
                  color: Colors.black, width: double.maxFinite, height: 1),
              SizedBox(height: 10),
              TextSty(text: "Hello User !", size: 35, color: Colors.black),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                height: 175,
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Text("- Quotes Of The Day -"),
                    SizedBox(height: 20),
                    Text(" \" Alasan Dapat Dibuat \" "),
                    Text(" 01 - 01 - 1111 "),
                  ],
                ),
              ),
              SizedBox(height: 20),
              BigText(
                  text: "PILIH TINGKAT KELAS :", size: 25, color: Colors.black),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                width: double.maxFinite,
                margin: EdgeInsets.only(left: 10, right: 10),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: double.maxFinite,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 12, 150, 91),
                          borderRadius: BorderRadius.all(
                            Radius.circular(13)
                          ),
                        ),
                        child: BigText(
                            text: "Kelas X", size: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: double.maxFinite,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 188, 14, 14),
                          borderRadius: BorderRadius.all(
                            Radius.circular(13),
                          ),
                        ),
                        child: BigText(
                            text: "Kelas XI", size: 20, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: double.maxFinite,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 33, 39, 136),
                          borderRadius: BorderRadius.all(
                            Radius.circular(13),
                          ),
                          // gradient: LinearGradient(
                          //   begin: Alignment.topCenter,
                          //   end: Alignment.bottomCenter,
                          //   colors: [
                          //     Color.fromARGB(255, 15, 23, 143),
                          //     Color.fromARGB(255, 69, 29, 58)
                          //   ],
                          // ),
                        ),
                        child: BigText(
                            text: "Kelas XII", size: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
