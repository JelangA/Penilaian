// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:penilaian/widget/BigText.dart';
import 'package:penilaian/widget/TextStryle.dart';
import 'package:penilaian/widget/textField.dart';

class JurusanList extends StatelessWidget {
  JurusanList({super.key});

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
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: ListJurusan.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 202, 196, 192),
                  ),
                  child: ListJurusan[index],
                ),
              ),
            );
          },
        )
      ],
    );
  }
}

// image: DecorationImage(
  //   fit: BoxFit.cover,
  //   image: AssetImage("assets/images/bangkong.jpg"),
  // ),