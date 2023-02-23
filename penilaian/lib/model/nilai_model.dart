class NilaiM {
  late List<NilaiModel> _nilai;
  List<NilaiModel> get nilai => _nilai;

  NilaiM({required nilai});

  NilaiM.fromJson(Map<String, dynamic> json) {
    if (json['nilai'] != null) {
      _nilai = <NilaiModel>[];
      json['nilai'].forEach((v) {
        _nilai.add(NilaiModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nilai'] = _nilai.map((v) => v.toJson()).toList();
    return data;
  }
}

class NilaiModel {
  String? nis;
  String? namaSiswa;
  String? idTugas;
  String? namaTugas;
  String? idPenilaian;
  String? nilai;
  String? typeNilai;
  String? tanggalPenilaian;

  NilaiModel(
      {this.nis,
      this.namaSiswa,
      this.idTugas,
      this.namaTugas,
      this.idPenilaian,
      this.nilai,
      this.typeNilai,
      this.tanggalPenilaian});

  NilaiModel.fromJson(Map<String, dynamic> json) {
    nis = json['nis'];
    namaSiswa = json['nama_siswa'];
    idTugas = json['id_tugas'];
    namaTugas = json['nama_tugas'];
    idPenilaian = json['id_penilaian'];
    nilai = json['nilai'];
    typeNilai = json['type_nilai'];
    tanggalPenilaian = json['tanggal_penilaian'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nis'] = nis;
    data['nama_siswa'] = namaSiswa;
    data['id_tugas'] = idTugas;
    data['nama_tugas'] = namaTugas;
    data['id_penilaian'] = idPenilaian;
    data['nilai'] = nilai;
    data['type_nilai'] = typeNilai;
    data['tanggal_penilaian'] = tanggalPenilaian;
    return data;
  }
}
