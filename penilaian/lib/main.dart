import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:penilaian/controller/jurusan_controller.dart';
import 'package:penilaian/controller/kelas_controller.dart';
import 'package:penilaian/controller/nilai_controller.dart';
import 'package:penilaian/controller/siswa_controller.dart';
import 'package:penilaian/routes/RouteHelper.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<KelasController>().getKelasList();
    Get.find<JurusanController>().getJurusanList();
    Get.find<SiswaController>().getSiswaList();
    Get.find<NilaiController>().getnilaiList();
    // ignore: prefer_const_constructors
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteHelper.getInitialPage(),
      getPages: RouteHelper.routes,
      // home: NilaiTabel(),
    );
  }
}
