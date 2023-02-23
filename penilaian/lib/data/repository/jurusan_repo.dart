import 'package:get/get.dart';
import 'package:penilaian/data/api/api_client.dart';
import 'package:penilaian/util/appconst.dart';

class JurusanRepo extends GetxService {
  final ApiClient apiClient;

  JurusanRepo({required this.apiClient});

  Future<Response> getjurusanList() async {
    return await apiClient.getData(AppConstants.JURUSAN_URI);
  }
}
