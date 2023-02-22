class KelasM {
  late List<KelasModel> _kelas;
  List<KelasModel> get kelas => _kelas;

  KelasM({required kelas}) {
    _kelas = kelas;
  }

  KelasM.fromJson(Map<String, dynamic> json) {
    if (json['Kelas'] != null) {
      _kelas = <KelasModel>[];
      json['Kelas'].forEach((v) {
        _kelas.add(KelasModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Kelas'] = _kelas.map((v) => v.toJson()).toList();
    return data;
  }
}

class KelasModel {
  String? idKelas;
  String? tingkatan;
  String? kelas;
  String? jurusan;

  KelasModel({this.idKelas, this.tingkatan, this.kelas, this.jurusan});

  KelasModel.fromJson(Map<String, dynamic> json) {
    idKelas = json['id_kelas'];
    tingkatan = json['tingkatan'];
    kelas = json['kelas'];
    jurusan = json['jurusan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id_kelas'] = idKelas;
    data['tingkatan'] = tingkatan;
    data['kelas'] = kelas;
    data['jurusan'] = jurusan;
    return data;
  }
}
