import 'package:flutter/material.dart';

class Contener extends StatelessWidget {
  final Color backGroundColor;
  final double heigh;
  final double opacit;
  final double pleft, pbottom, pright, ptop;
  final double mleft, mbottom, mright, mtop;
  final double radius;

  Contener({
    Key? key,
    this.backGroundColor = const Color(0xFFfcf4e4),
    this.heigh = 0,
    this.opacit = 0,
    this.pleft = 0,
    this.pbottom = 0,
    this.pright = 0,
    this.ptop = 0,
    this.mleft = 0,
    this.mbottom = 0,
    this.mright = 0,
    this.mtop = 0,
    this.radius = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: pleft == 0 ? 20 : pleft,
          bottom: pbottom == 0 ? 20 : pbottom,
          right: pright == 0 ? 20 : pright,
          top: ptop == 0 ? 20 : ptop),
      margin: EdgeInsets.only(
          left: mleft == 0 ? 10 : mleft,
          bottom: mbottom == 0 ? 0 : mbottom,
          right: mright == 0 ? 10 : mright,
          top: mtop == 0 ? 0 : ptop),
      height: heigh == 0 ? 150 : heigh,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: backGroundColor.withOpacity(opacit == 0 ? 0.3 : opacit),
        borderRadius: BorderRadius.all(
          Radius.circular(
            radius == 0 ? 20 : radius,
          ),
        ),
      ),
    );
  }
}
