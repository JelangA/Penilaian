import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penilaian/controller/kelas_controller.dart';
import 'package:penilaian/routes/RouteHelper.dart';
import 'package:penilaian/widget/bigText.dart';

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
List<BigText> ListKelas = [
  BigText(
    text: "XII RPL1",
    size: 25,
  ),
  BigText(
    text: "XII RPL2",
    size: 25,
  ),
  BigText(
    text: "XII RPL3",
    size: 25,
  ),
  BigText(
    text: "XII RPL4",
    size: 25,
  ),
  BigText(
    text: "XII RPL5",
    size: 25,
  ),
  BigText(text: "XII RPL6", size: 25),
];

class PersonDetailsDialog extends StatefulWidget {
  @override
  _PersonDetailsDialogState createState() {
    return _PersonDetailsDialogState();
  }
}

class _PersonDetailsDialogState extends State<PersonDetailsDialog> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<KelasController>(
      builder: (kelass) {
        return AlertDialog(
          title: const Text("kelas"),
          content: SizedBox(
            height: 200,
            width: 350,
            child: ListView.builder(
              itemCount: kelass.kelasList.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getSiswaPage());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: listcolor[index]),
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    height: 50,
                    child: BigText(text: kelass.kelasList[index].kelas!, size: 25),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
