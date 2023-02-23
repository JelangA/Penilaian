import 'package:get/get.dart';
import 'package:penilaian/data/api/api_client.dart';
import 'package:penilaian/util/appconst.dart';

class NilaiRepo extends GetxService {
  final ApiClient apiClient;

  NilaiRepo({required this.apiClient});

  Future<Response> getnilaiList() async {
    return await apiClient.getData(AppConstants.NILAI_URI);
  }
}
