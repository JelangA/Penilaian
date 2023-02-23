import 'package:get/get.dart';
import 'package:penilaian/data/repository/kelas_repo.dart';
import 'package:penilaian/model/kelas_model.dart';

class KelasController extends GetxController {
  final KelasRepo kelasRepo;
  
  KelasController({required this.kelasRepo});
  List<dynamic> _kelasList = [];
  List<dynamic> get kelasList => _kelasList;
  String? dataFilter;

  Future<void> getKelasList() async {
    Response response = await kelasRepo.getkelasList();
    if (response.statusCode == 200) {
      print("dapet Kelassss");
      _kelasList = [];
      _kelasList.addAll(KelasM.fromJson(response.body).kelas);
      print(_kelasList);
      update();
    } else {}
  }

  void filterlist() {}
}
