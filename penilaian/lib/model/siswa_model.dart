class SiswaM {
  late List<SiswaModel> _siswa;
  List<SiswaModel> get siswa => _siswa;

  SiswaM({required siswa}) {
    _siswa = siswa;
  }

  SiswaM.fromJson(Map<String, dynamic> json) {
    if (json['siswa'] != null) {
      _siswa = <SiswaModel>[];
      json['siswa'].forEach((v) {
        _siswa.add(SiswaModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['siswa'] = _siswa.map((v) => v.toJson()).toList();
    return data;
  }
}

class SiswaModel {
  String? nis;
  String? password;
  String? noAbsen;
  String? kelas;
  String? foto;
  String? namaSiswa;
  String? jK;
  String? tTL;
  String? agama;

  SiswaModel(
      {this.nis,
      this.password,
      this.noAbsen,
      this.kelas,
      this.foto,
      this.namaSiswa,
      this.jK,
      this.tTL,
      this.agama});

  SiswaModel.fromJson(Map<String, dynamic> json) {
    nis = json['nis'];
    password = json['password'];
    noAbsen = json['no_absen'];
    kelas = json['kelas'];
    foto = json['foto'];
    namaSiswa = json['nama_siswa'];
    jK = json['JK'];
    tTL = json['TTL'];
    agama = json['agama'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nis'] = this.nis;
    data['password'] = password;
    data['no_absen'] = this.noAbsen;
    data['kelas'] = this.kelas;
    data['foto'] = this.foto;
    data['nama_siswa'] = this.namaSiswa;
    data['JK'] = this.jK;
    data['TTL'] = this.tTL;
    data['agama'] = this.agama;
    return data;
  }
}
