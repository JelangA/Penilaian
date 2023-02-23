import 'package:get/get.dart';
import 'package:penilaian/data/api/api_client.dart';
import 'package:penilaian/util/appconst.dart';

class SiswaRepo extends GetxService {
  final ApiClient apiClient;

  SiswaRepo({required this.apiClient});

  Future<Response> getsiswatList() async { 
    return await apiClient.getData(AppConstants.SISWA_URI);
  }
  
}