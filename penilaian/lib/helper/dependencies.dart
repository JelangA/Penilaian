import 'package:get/get.dart';
import 'package:penilaian/controller/jurusan_controller.dart';
import 'package:penilaian/controller/kelas_controller.dart';
import 'package:penilaian/controller/nilai_controller.dart';
import 'package:penilaian/controller/siswa_controller.dart';
import 'package:penilaian/data/api/api_client.dart';
import 'package:penilaian/data/repository/jurusan_repo.dart';
import 'package:penilaian/data/repository/kelas_repo.dart';
import 'package:penilaian/data/repository/nilai_repo.dart';
import 'package:penilaian/data/repository/siswa_repo.dart';
import 'package:penilaian/util/appconst.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  Get.lazyPut(() => KelasRepo(apiClient: Get.find()));
  Get.lazyPut(() => JurusanRepo(apiClient: Get.find()));
  Get.lazyPut(() => SiswaRepo(apiClient: Get.find()));
  Get.lazyPut(() => NilaiRepo(apiClient: Get.find()));

  Get.lazyPut(() => KelasController(kelasRepo: Get.find()));
  Get.lazyPut(() => JurusanController(jurusanRepo: Get.find()));
  Get.lazyPut(() => SiswaController(siswaRepo: Get.find()));
  Get.lazyPut(() => NilaiController(nilaiRepo: Get.find()));
}
