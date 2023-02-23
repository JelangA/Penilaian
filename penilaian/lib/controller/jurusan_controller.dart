import 'package:get/get.dart';
import 'package:penilaian/data/repository/jurusan_repo.dart';
import 'package:penilaian/model/jurusan_model.dart';

class JurusanController extends GetxController {
  final JurusanRepo jurusanRepo;

  JurusanController({required this.jurusanRepo});
  List<dynamic> _jurusanList = [];
  List<dynamic> get jurusanList => _jurusanList;

  Future<void> getJurusanList() async {
    Response response = await jurusanRepo.getjurusanList();
    if (response.statusCode == 200) {
      print("dapet jurusan");
      _jurusanList = [];
      _jurusanList.addAll(JurusanM.fromJson(response.body).jurusan);
      print(_jurusanList);
      update();
    } else {}
  }
}
