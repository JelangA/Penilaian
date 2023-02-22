class siswaModel {
  List<Siswa>? _siswa;

  siswaModel({List<Siswa>? siswa}) {
    if (siswa != null) {
      this._siswa = siswa;
    }
  }

  List<Siswa>? get siswa => _siswa;
  set siswa(List<Siswa>? siswa) => _siswa = siswa;

  siswaModel.fromJson(Map<String, dynamic> json) {
    if (json['siswa'] != null) {
      _siswa = <Siswa>[];
      json['siswa'].forEach((v) {
        _siswa!.add(new Siswa.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._siswa != null) {
      data['siswa'] = this._siswa!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Siswa {
  String? _nis;
  String? _noAbsen;
  String? _idKelas;
  String? _foto;
  String? _namaSiswa;
  String? _jK;
  String? _tTL;
  String? _agama;
  String? _level;

  Siswa(
      {String? nis,
      String? noAbsen,
      String? idKelas,
      String? foto,
      String? namaSiswa,
      String? jK,
      String? tTL,
      String? agama,
      String? level}) {
    if (nis != null) {
      this._nis = nis;
    }
    if (noAbsen != null) {
      this._noAbsen = noAbsen;
    }
    if (idKelas != null) {
      this._idKelas = idKelas;
    }
    if (foto != null) {
      this._foto = foto;
    }
    if (namaSiswa != null) {
      this._namaSiswa = namaSiswa;
    }
    if (jK != null) {
      this._jK = jK;
    }
    if (tTL != null) {
      this._tTL = tTL;
    }
    if (agama != null) {
      this._agama = agama;
    }
    if (level != null) {
      this._level = level;
    }
  }

  String? get nis => _nis;
  set nis(String? nis) => _nis = nis;
  String? get noAbsen => _noAbsen;
  set noAbsen(String? noAbsen) => _noAbsen = noAbsen;
  String? get idKelas => _idKelas;
  set idKelas(String? idKelas) => _idKelas = idKelas;
  String? get foto => _foto;
  set foto(String? foto) => _foto = foto;
  String? get namaSiswa => _namaSiswa;
  set namaSiswa(String? namaSiswa) => _namaSiswa = namaSiswa;
  String? get jK => _jK;
  set jK(String? jK) => _jK = jK;
  String? get tTL => _tTL;
  set tTL(String? tTL) => _tTL = tTL;
  String? get agama => _agama;
  set agama(String? agama) => _agama = agama;
  String? get level => _level;
  set level(String? level) => _level = level;

  Siswa.fromJson(Map<String, dynamic> json) {
    _nis = json['nis'];
    _noAbsen = json['no_absen'];
    _idKelas = json['id_kelas'];
    _foto = json['foto'];
    _namaSiswa = json['nama_siswa'];
    _jK = json['JK'];
    _tTL = json['TTL'];
    _agama = json['agama'];
    _level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nis'] = this._nis;
    data['no_absen'] = this._noAbsen;
    data['id_kelas'] = this._idKelas;
    data['foto'] = this._foto;
    data['nama_siswa'] = this._namaSiswa;
    data['JK'] = this._jK;
    data['TTL'] = this._tTL;
    data['agama'] = this._agama;
    data['level'] = this._level;
    return data;
  }
}