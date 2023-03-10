import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penilaian/routes/RouteHelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  // Future<void>_loadResource() async {
  //   await Get.find<PopularProductController>().getPopularProductList();
  //   await Get.find<RecomendedProductController>().getRecomendedProductList();
  // }

  @override
  void initState() {
    super.initState();
    // _loadResource();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();

    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    Timer(Duration(seconds: 3),
        (() => Get.offNamed(RouteHelper.getInitialPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ScaleTransition(
          scale: animation,
          child: Center(
            child: Image.asset(
              "assets/images/bangkong.jpg",
              width: 20,
            ),
          ),
        ),
      ]),
    );
  }
}