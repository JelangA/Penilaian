import 'package:get/get.dart';
import 'package:penilaian/data/repository/siswa_repo.dart';
import 'package:penilaian/model/siswa_model.dart';


class SiswaController extends GetxController {
  final SiswaRepo siswaRepo;

  SiswaController({required this.siswaRepo});
  List<dynamic> _siswaList = [];
  List<dynamic> get siswaList => _siswaList;

  Future<void> getSiswaList() async {
    Response response = await siswaRepo.getsiswatList();
    if (response.statusCode == 200) {
      print("dapet Siswa");
      _siswaList = [];
      _siswaList.addAll(SiswaM.fromJson(response.body).siswa);
      print(_siswaList);
      update();
    } else {}
  }
}
