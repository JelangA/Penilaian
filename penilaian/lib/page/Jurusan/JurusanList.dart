// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penilaian/controller/kelas_controller.dart';
import 'package:penilaian/routes/RouteHelper.dart';
import 'package:penilaian/widget/BigTextt.dart';

class JurusanList extends StatelessWidget {
  JurusanList({super.key});

  List<Color> listcolor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.teal,
    Colors.pink,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.teal,
    Colors.pink,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.teal,
    Colors.pink,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.teal,
    Colors.pink,
  ];

  List<BigText> ListKelas = [
    BigText(
      text: "XII RPL1",
      size: 25,
    ),
    BigText(
      text: "XII RPL2",
      size: 25,
    ),
    BigText(
      text: "XII RPL3",
      size: 25,
    ),
    BigText(
      text: "XII RPL4",
      size: 25,
    ),
    BigText(
      text: "XII RPL5",
      size: 25,
    ),
    BigText(
      text: "XII RPL6",
      size: 25,
    ),
  ];

  List<BigText> ListJurusan = [
    BigText(text: "Rekayasa Perangkat Lunak", size: 25),
    BigText(text: "Teknik Instalasi Tenaga Listrik", size: 25),
    BigText(text: "Teknik Komputer dan Jaringan", size: 25),
    BigText(text: "Teknik Mesin", size: 25),
    BigText(text: "Motor", size: 25),
    BigText(text: "multimedia", size: 25),
    BigText(text: "tataboga", size: 25),
    BigText(text: "pertambangan", size: 25),
    BigText(text: "peranakan", size: 25),
    BigText(text: "perlautan", size: 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetBuilder<KelasController>(builder:(kelass) {
          return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: kelass.kelasList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () { 
                  // Get.toNamed(RouteHelper.getSiswaPage());
                  openDialog();
                },
                child: Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:
                            Color.fromARGB(255, 202, 196, 192).withOpacity(0.5),
                      ),
                      child: BigText(text: kelass.kelasList[index].jurusan!, size: 25),
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ],
    );
  }

  Future openDialog() => showDialog(
        context: Get.context!,
        builder: (context) => AlertDialog(
          title: Text("kelas"),
          content: SizedBox(
            height: 200,
            width: 350,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getSiswaPage());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: listcolor[index]),
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    height: 50,
                    child: ListKelas[index],
                  ),
                );
              },
            ),
          ),
        ),
      );
}
