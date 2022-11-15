class DataPengalamanKerja {
  String? previous;
  String? next;
  int? status;
  List<Result>? result;

  DataPengalamanKerja.fromJson(Map<String, dynamic> json) {
    previous = json['previous'];
    next = json['next'];
    status = json['status'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
  }
}

class Result {
  String? no;
  String? namaPerusahaan;
  String? jabatan;
  String? uraianKerja;
  String? tglMasuk;
  String? tglBerhenti;
  bool? status;

  Result.fromJson(Map<String, dynamic> json) {
    no = json['no'];
    namaPerusahaan = json['nama_perusahaan'];
    jabatan = json['jabatan'];
    uraianKerja = json['uraian_kerja'];
    tglMasuk = json['tgl_masuk'];
    tglBerhenti = json['tgl_berhenti'];
    status = json['status'];
  }
}
