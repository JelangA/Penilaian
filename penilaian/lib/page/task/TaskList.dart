// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:penilaian/widget/BigText.dart';

class TaskList extends StatelessWidget {
  TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 700,
        child: ListView.builder(
          // shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              height: 80,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 248, 248).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 7, bottom: 7),
                  width: 60,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/bangkong.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BigText(text: "Jelang Anugrah Raharjo", size: 12),
                          BigText(text: "XII RPL", size: 12),
                          BigText(text: "Laki - Laki", size: 12),
                          BigText(text: "201021510", size: 12)
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            );
          },
        ),
      ),
    ]);
  }
}
