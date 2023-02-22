import 'package:get/get.dart';
import 'package:penilaian/data/api/api_client.dart';
import 'package:penilaian/util/appconst.dart';

class KelasRepo extends GetxService {
  final ApiClient apiClient;

  KelasRepo({required this.apiClient});

  Future<Response> getkelasList() async { 
    return await apiClient.getData(AppConstants.KELAS_URL);
  }

  
}