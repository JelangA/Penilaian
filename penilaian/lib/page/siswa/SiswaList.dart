// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penilaian/controller/siswa_controller.dart';
import 'package:penilaian/routes/RouteHelper.dart';
import 'package:penilaian/widget/BigTextt.dart';

class SiswaList extends StatelessWidget {
  SiswaList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SiswaController>(builder: (siswas) {
      return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: siswas.siswaList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Get.toNamed(RouteHelper.detailTask),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 248, 248).withOpacity(0.2),
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              SizedBox(
                width: 12,
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                color: Colors.black,
                height: double.maxFinite,
                width: 1,
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
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigText(text: '${siswas.siswaList[index].namaSiswa}', size: 12),
                        BigText(text: '${siswas.siswaList[index].nis}', size: 12),
                        BigText(text: '${siswas.siswaList[index].jK}', size: 12),
                        BigText(text: '${siswas.siswaList[index].kelas}', size: 12),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        );
      },
    );

    });
  }
}
