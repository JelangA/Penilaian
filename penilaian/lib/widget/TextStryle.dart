// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:penilaian/util/dimensions.dart';

class TextSty extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  TextSty(
      {Key? key,
      this.color = Colors.white,
      required this.text,
      this.size = 0,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
          color: color,
          fontSize: size == 0 ? Dimentions.font20 : size,
          fontWeight: FontWeight.w400,
          fontFamily: 'Milenia'),
    );
  }
}
