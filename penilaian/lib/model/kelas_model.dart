// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this

class SiswaModel {
  Kelas? kelas;

  SiswaModel({this.kelas});

  SiswaModel.fromJson(Map<String, dynamic> json) {
    kelas = json['kelas'] != null ? new Kelas.fromJson(json['kelas']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.kelas != null) {
      data['kelas'] = this.kelas!.toJson();
    }
    return data;
  }
}

class Kelas {
  XL? xL;
  XL? xIRPL1;
  XL? xIRPL2;
  XL? xIIRPL1;
  XL? xIITKJ1;
  XL? xIITKJ2;

  Kelas(
      {this.xL,
      this.xIRPL1,
      this.xIRPL2,
      this.xIIRPL1,
      this.xIITKJ1,
      this.xIITKJ2});

  Kelas.fromJson(Map<String, dynamic> json) {
    xL = json['X L'] != null ? new XL.fromJson(json['X L']) : null;
    xIRPL1 = json['XI RPL1'] != null ? new XL.fromJson(json['XI RPL1']) : null;
    xIRPL2 = json['XI RPL2'] != null ? new XL.fromJson(json['XI RPL2']) : null;
    xIIRPL1 =
        json['XII RPL1'] != null ? new XL.fromJson(json['XII RPL1']) : null;
    xIITKJ1 =
        json['XII TKJ1'] != null ? new XL.fromJson(json['XII TKJ1']) : null;
    xIITKJ2 =
        json['XII TKJ2'] != null ? new XL.fromJson(json['XII TKJ2']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.xL != null) {
      data['X L'] = this.xL!.toJson();
    }
    if (this.xIRPL1 != null) {
      data['XI RPL1'] = this.xIRPL1!.toJson();
    }
    if (this.xIRPL2 != null) {
      data['XI RPL2'] = this.xIRPL2!.toJson();
    }
    if (this.xIIRPL1 != null) {
      data['XII RPL1'] = this.xIIRPL1!.toJson();
    }
    if (this.xIITKJ1 != null) {
      data['XII TKJ1'] = this.xIITKJ1!.toJson();
    }
    if (this.xIITKJ2 != null) {
      data['XII TKJ2'] = this.xIITKJ2!.toJson();
    }
    return data;
  }
}

class XL {
  String? jurusan;
  String? tingkat;

  XL({this.jurusan, this.tingkat});

  XL.fromJson(Map<String, dynamic> json) {
    jurusan = json['jurusan'];
    tingkat = json['tingkat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jurusan'] = this.jurusan;
    data['tingkat'] = this.tingkat;
    return data;
  }
}