
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penilaian/util/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {Key? key,
      this.color = Colors.black,
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
        fontSize: size == 0? Dimentions.font20 : size,
        fontWeight: FontWeight.w400,
        fontFamily: 'roboto'
      ),
    );
  }
}

class SmallText extends StatelessWidget {
  const SmallText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}