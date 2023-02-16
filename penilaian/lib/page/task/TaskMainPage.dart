// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:penilaian/page/siswa/SiswaList.dart';
import 'package:penilaian/page/task/TaskList.dart';
import 'package:penilaian/util/colors.dart';
import 'package:penilaian/widget/BigTextt.dart';
import 'package:penilaian/widget/TextStryle.dart';
import 'package:penilaian/widget/container.dart';
import 'package:penilaian/widget/header.dart';
import 'package:penilaian/widget/textField.dart';

const List<String> list = <String>['Mata Pelajaran', 'Matematika', 'Bahasa Indonesia', 'Agama'];

class TaskMainPage extends StatefulWidget {
  const TaskMainPage({super.key});

  @override
  State<TaskMainPage> createState() => TaskMainPageState();
}

class TaskMainPageState extends State<TaskMainPage> {
  String dropdownValue = list.first;


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
            Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: TextfieldW(hint: "Cari"),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
              height: 50,
              width: double.maxFinite,
              color: AppColors.maincolor,
              alignment: Alignment.center,
              child: BigText(
                text: "XII RPL3",
                size: 20,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 60, right: 60),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(
                      text: "Nama Siswa",
                      size: 23,
                    ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Color.fromARGB(255, 2, 0, 4)),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),                        );
                      }).toList(),
                    ),
                  ]),
            ),
            Expanded(child: SingleChildScrollView(child: TaskList())),
          ],
        ),
      ),
    );
  }
}
