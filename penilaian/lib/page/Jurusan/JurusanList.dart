// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penilaian/controller/jurusan_controller.dart';
import 'package:penilaian/controller/kelas_controller.dart';
import 'package:penilaian/page/Jurusan/PopUpKelas.dart';
import 'package:penilaian/routes/RouteHelper.dart';
import 'package:penilaian/widget/BigTextt.dart';

class JurusanList extends StatefulWidget {
  JurusanList({super.key});

  @override
  State<JurusanList> createState() => _JurusanListState();
}

class _JurusanListState extends State<JurusanList> {
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
    return GetBuilder<JurusanController>(builder: (jurusans) {
      return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: jurusans.jurusanList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => PersonDetailsDialog(),);
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
                  child: BigText(
                      text: jurusans.jurusanList[index].jurusan!, size: 25),
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
