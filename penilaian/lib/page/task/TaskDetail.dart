// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:penilaian/util/colors.dart';
import 'package:penilaian/widget/bigText.dart';
import 'package:penilaian/widget/header.dart';

class TaskDetailPage extends StatefulWidget {
  const TaskDetailPage({super.key});

  @override
  State<TaskDetailPage> createState() => _TaskDetailPageState();
}

class _TaskDetailPageState extends State<TaskDetailPage> {
  List<String> namatugas = [
    'LKPD 1.5','Tugas 1', 'Latihan 5', 'Latihan Kelompok1'
  ];
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
          colors: const [
            AppColors.backgroundcolor1,
            AppColors.backgroundcolor2
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Heder(),
          Container(
            margin: EdgeInsets.only(left: 20),
            width: double.maxFinite,
            height: 150,
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 110,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(5),
                    color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/bangkong.jpg"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 25,
                    bottom: 7,
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: AppColors.mainBlackColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: BigText(
                          text: "1",
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      BigText(
                        text: "Jelang Anugrah Raharjo",
                        size: 18,
                      ),
                      BigText(
                        text: "201021064",
                        size: 18,
                      ),
                      BigText(
                        text: "XII-TKJ 3",
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          DataTable(
            decoration: BoxDecoration(color: Colors.green),
            columns: [
              DataColumn(label: Text("Nama tugas")),
              DataColumn(label: Text("Mata Pelajaran")),
              DataColumn(label: Text("Nilai")),
              DataColumn(label: Text("Action"))
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("LKPD 1.5")),
                DataCell(Text("PPKN")),
                DataCell(Text("91")),
                DataCell(Icon(Icons.edit))
              ])
            ],
          )
        ],
      ),
    ));
  }
}
