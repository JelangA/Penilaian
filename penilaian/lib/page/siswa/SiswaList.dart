// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:penilaian/util/dimensions.dart';
import 'package:penilaian/widget/BigTextt.dart';
import 'package:penilaian/widget/textField.dart';

class SiswaList extends StatelessWidget {
  SiswaList({super.key});

  Map mymap = {
    "jurusan": {
      "Listrik": {
        "Listrik1": {"1101": "jelang listrik1", "1102": "haritza listrik2"},
        "listrik2": {"1201": "haritza listrik2", "1202": "jelang listrik2"}
      },
      "RPL": {
        "RPL1": {"2101": "jelang rpl1", "2102": "haritza rpl1"},
        "RPL2": {"2201": "jelang rpl2", "2202": "haritza rpl2"}
      },
      "TKJ": {
        "TKJ1": {"3101": "jelang rkj1", "3102": "haritza tkj1"},
        "TKJ2": {"3201": "jelang tkj2", "3202": "haritza tkj2"}
      }
    }
  };

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
            return GestureDetector(
              onTap: () {
                
              },
              child: Container(
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
              ),
            );
          },
        ),
      ),
    ]);
  }
}
