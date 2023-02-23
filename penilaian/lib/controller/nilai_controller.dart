import 'package:get/get.dart';
import 'package:penilaian/data/repository/nilai_repo.dart';
import 'package:penilaian/model/nilai_model.dart';

class NilaiController extends GetxController {
  final NilaiRepo nilaiRepo;

  NilaiController({required this.nilaiRepo});
  List<dynamic> _nilaiList = [];
  List<dynamic> get nilaiList => _nilaiList;
  String? dataFilter;

  Future<void> getnilaiList() async {
    Response response = await nilaiRepo.getnilaiList();
    if (response.statusCode == 200) {
      print("dapet nilai");
      _nilaiList = [];
      _nilaiList.addAll(NilaiM.fromJson(response.body).nilai);
      print(_nilaiList);
      update();
    } else {}
  }
}
