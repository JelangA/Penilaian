// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:penilaian/widget/TextStryle.dart';

class Heder extends StatelessWidget {
  const Heder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextSty(text: "E'Task", size: 25, color: Colors.black),
          SizedBox(
            child: Row(
              children: [
                Icon(Icons.logout_outlined, size: 30),
                const SizedBox(width: 20),
                Icon(Icons.person_2_outlined, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
