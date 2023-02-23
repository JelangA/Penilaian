class JurusanM {
  late List<JurusanModel> _jurusan;
  List<JurusanModel> get jurusan => _jurusan;

  JurusanM({required jurusan}) {
    _jurusan = jurusan;
  }

  JurusanM.fromJson(Map<String, dynamic> json) {
    if (json['jurusan'] != null) {
      _jurusan = <JurusanModel>[];
      json['jurusan'].forEach((v) {
        _jurusan.add(JurusanModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['jurusan'] = _jurusan.map((v) => v.toJson()).toList();
    return data;
  }
}

class JurusanModel {
  String? jurusan;

  JurusanModel({this.jurusan});

  JurusanModel.fromJson(Map<String, dynamic> json) {
    jurusan = json['jurusan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['jurusan'] = jurusan;
    return data;
  }
}
