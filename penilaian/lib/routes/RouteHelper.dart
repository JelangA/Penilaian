import 'package:get/get.dart';
import 'package:penilaian/page/auth/login-page.dart';
import 'package:penilaian/page/home/home-page.dart';
import 'package:penilaian/page/jurusan/JurusanMainPage.dart';
import 'package:penilaian/page/siswa/SiswaMainPage.dart';
import 'package:penilaian/page/task/TaskDetail.dart';
import 'package:penilaian/page/task/TaskMainPage.dart';

class RouteHelper {
  static const String splashscreen = "/splashscreen";
  static const String initial = "/";
  static const String homePageGuru = "/HomePageGu";
  static const String jurusanPage = "/jurusan-page";
  static const String siswaPage = "/siswaPage";
  static const String taskPage = "/taskPage";
  static const String detailTask = "/detailTaskPage";

  static String getInitialPage() => '$initial';
  static String getHomepageGu() => '$homePageGuru';
  static String getJurusanPage() => '$jurusanPage';
  static String getSiswaPage() => '$siswaPage';
  static String getTaskMain() => '$taskPage';
  static String getDetailTaskPage() => '$detailTask';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => LoginPage()),
    GetPage(name: homePageGuru, page: () => HomePageGU()),
    GetPage(name: jurusanPage, page: () => JurusanMainPage()),
    GetPage(name: siswaPage, page: () => SiswaMainPage()),
    GetPage(name: taskPage, page: () => TaskMainPage()),
    GetPage(name: detailTask, page: () => TaskDetailPage()),
  ];
}
