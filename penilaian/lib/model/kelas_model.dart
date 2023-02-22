class kelasModel {
  List<Kelas>? _kelas;

  kelasModel({List<Kelas>? kelas}) {
    if (kelas != null) {
      this._kelas = kelas;
    }
  }

  List<Kelas>? get kelas => _kelas;
  set kelas(List<Kelas>? kelas) => _kelas = kelas;

  kelasModel.fromJson(Map<String, dynamic> json) {
    if (json['Kelas'] != null) {
      _kelas = <Kelas>[];
      json['Kelas'].forEach((v) {
        _kelas!.add(new Kelas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._kelas != null) {
      data['Kelas'] = this._kelas!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Kelas {
  String? _idKelas;
  String? _tingkatan;
  String? _kelas;
  String? _jurusan;

  Kelas({String? idKelas, String? tingkatan, String? kelas, String? jurusan}) {
    if (idKelas != null) {
      this._idKelas = idKelas;
    }
    if (tingkatan != null) {
      this._tingkatan = tingkatan;
    }
    if (kelas != null) {
      this._kelas = kelas;
    }
    if (jurusan != null) {
      this._jurusan = jurusan;
    }
  }

  String? get idKelas => _idKelas;
  set idKelas(String? idKelas) => _idKelas = idKelas;
  String? get tingkatan => _tingkatan;
  set tingkatan(String? tingkatan) => _tingkatan = tingkatan;
  String? get kelas => _kelas;
  set kelas(String? kelas) => _kelas = kelas;
  String? get jurusan => _jurusan;
  set jurusan(String? jurusan) => _jurusan = jurusan;

  Kelas.fromJson(Map<String, dynamic> json) {
    _idKelas = json['id_kelas'];
    _tingkatan = json['tingkatan'];
    _kelas = json['kelas'];
    _jurusan = json['jurusan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_kelas'] = this._idKelas;
    data['tingkatan'] = this._tingkatan;
    data['kelas'] = this._kelas;
    data['jurusan'] = this._jurusan;
    return data;
  }
}