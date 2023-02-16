// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:penilaian/widget/BigTextt.dart';

class TaskList extends StatelessWidget {
  TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                
              },
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 248, 248).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20)),
                margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                child:
                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 50, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: "Modul PPKN 2.03", size: 26),
                                Row(
                                  children: [
                                    BigText(text: "Tanggal Tugas : ", size: 13),
                                    BigText(text: "11 / 11 / 2022", size: 13),
                                  ],
                                ),
                                Row(
                                  children: [
                                    BigText(text: "Tenggat Tugas : ", size: 13),
                                    BigText(text: "12 / 23 / 2023", size: 13),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 100,),
                          Icon(Icons.verified_outlined, size: 50,)
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            );
          },
        ),
      ),
    ]);
  }
}
