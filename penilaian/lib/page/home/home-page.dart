// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penilaian/routes/RouteHelper.dart';
import 'package:penilaian/widget/bigText.dart';

class HomePageGU extends StatefulWidget {
  const HomePageGU({super.key});

  @override
  State<HomePageGU> createState() => _HomePageGUState();
}

class _HomePageGUState extends State<HomePageGU> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(
                      text: "E'Task",
                      size: 25,
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout_outlined,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black,
                width: double.maxFinite,
                height: 1,
              ),
              SizedBox(height: 10),
              BigText(
                text: "Hello User !",
                size: 35,
              ),
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
                    SizedBox(
                      height: 20,
                    ),
                    Text(" \" Alasan Dapat Dibuat \" "),
                    Text(" 01 - 01 - 1111 "),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "PILIH TINGKAT KELAS :",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
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
                    new GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.getJurusanPage());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.maxFinite,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 12, 150, 91),
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
                          text: "Kelas X",
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    new GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.getJurusanPage());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.maxFinite,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 188, 14, 14),
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
                          text: "Kelas XI",
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteHelper.getJurusanPage());
                      },
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
                          text: "Kelas XII",
                          size: 20,
                          color: Colors.white,
                        ),
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
