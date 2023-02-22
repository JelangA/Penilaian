import 'package:get/get.dart';
import 'package:penilaian/controller/kelas_controller.dart';
import 'package:penilaian/data/api/api_client.dart';
import 'package:penilaian/data/repository/kelas_repo.dart';
import 'package:penilaian/util/appconst.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  Get.lazyPut(() => KelasRepo(apiClient: Get.find()));

  Get.lazyPut(() => KelasController(kelasRepo: Get.find()));
}
