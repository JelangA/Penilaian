// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penilaian/controller/nilai_controller.dart';

class NilaiTabel extends StatefulWidget {
  const NilaiTabel({super.key});

  @override
  State<NilaiTabel> createState() => _NilaiTabelState();
}

class _NilaiTabelState extends State<NilaiTabel> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NilaiController>(
      builder: (nilais) {
        return Scaffold(
          body: Center(
            child: Table(
              border: TableBorder.all(),
              children: [
                buildrow(["cell1", "cell2", "cell3"])
              ],
            ),
          ),
        );
      },
    );
  }

  TableRow buildrow(List<String> cells, {bool isHeader = false}) => TableRow(
          children: cells.map((cell) {
        final style = TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        );
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
              child: Text(
            cell,
            style: style,
          )),
        );
      }).toList());
}
