import 'package:get/get.dart';
import 'package:penilaian/data/api/api_client.dart';
import 'package:penilaian/util/appconst.dart';

class SiwaRepo extends GetxService {
  final ApiClient apiClient;

  SiwaRepo({required this.apiClient});

  Future<Response> getPopularProductList() async { 
    return await apiClient.getData(AppConstants.SISWA_URI);
  }
  
}