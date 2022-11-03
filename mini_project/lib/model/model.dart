class JadwalSholat {
  bool? status;
  Data? data;

  JadwalSholat({this.status, this.data});

  JadwalSholat.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Lokasi {
  String? id;
  String? lokasi;

  Lokasi({this.id, this.lokasi});

  Lokasi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lokasi = json['lokasi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['lokasi'] = this.lokasi;
    return data;
  }
}

class Data {
  String? id;
  String? lokasi;
  String? daerah;
  Koordinat? koordinat;
  Jadwal? jadwal;

  Data({this.id, this.lokasi, this.daerah, this.koordinat, this.jadwal});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lokasi = json['lokasi'];
    daerah = json['daerah'];
    koordinat = json['koordinat'] != null
        ? Koordinat.fromJson(json['koordinat'])
        : null;
    jadwal = json['jadwal'] != null ? Jadwal.fromJson(json['jadwal']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['lokasi'] = this.lokasi;
    data['daerah'] = this.daerah;
    if (this.koordinat != null) {
      data['koordinat'] = this.koordinat!.toJson();
    }
    if (this.jadwal != null) {
      data['jadwal'] = this.jadwal!.toJson();
    }
    return data;
  }
}

class Koordinat {
  double? lat;
  double? lon;
  String? lintang;
  String? bujur;

  Koordinat({this.lat, this.lon, this.lintang, this.bujur});

  Koordinat.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
    lintang = json['lintang'];
    bujur = json['bujur'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['lintang'] = this.lintang;
    data['bujur'] = this.bujur;
    return data;
  }
}

class Jadwal {
  String? tanggal;
  String? imsak;
  String? subuh;
  String? terbit;
  String? dhuha;
  String? dzuhur;
  String? ashar;
  String? maghrib;
  String? isya;
  String? date;

  Jadwal(
      {this.tanggal,
      this.imsak,
      this.subuh,
      this.terbit,
      this.dhuha,
      this.dzuhur,
      this.ashar,
      this.maghrib,
      this.isya,
      this.date});

  Jadwal.fromJson(Map<String, dynamic> json) {
    tanggal = json['tanggal'];
    imsak = json['imsak'];
    subuh = json['subuh'];
    terbit = json['terbit'];
    dhuha = json['dhuha'];
    dzuhur = json['dzuhur'];
    ashar = json['ashar'];
    maghrib = json['maghrib'];
    isya = json['isya'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['tanggal'] = this.tanggal;
    data['imsak'] = this.imsak;
    data['subuh'] = this.subuh;
    data['terbit'] = this.terbit;
    data['dhuha'] = this.dhuha;
    data['dzuhur'] = this.dzuhur;
    data['ashar'] = this.ashar;
    data['maghrib'] = this.maghrib;
    data['isya'] = this.isya;
    data['date'] = this.date;
    return data;
  }  
}

class Tafsir {
  bool? status;
  List<Data>? data;

  Tafsir({this.status, this.data});

  Tafsir.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TafsirData {
  int? tafsirId;
  String? ayaName;
  int? suraId;
  int? ayaNumber;
  String? text;
  String? mufasir;
  String? html;

  TafsirData(
      {this.tafsirId,
      this.ayaName,
      this.suraId,
      this.ayaNumber,
      this.text,
      this.mufasir,
      this.html});

  TafsirData.fromJson(Map<String, dynamic> json) {
    tafsirId = json['tafsir_id'];
    ayaName = json['aya_name'];
    suraId = json['sura_id'];
    ayaNumber = json['aya_number'];
    text = json['text'];
    mufasir = json['mufasir'];
    html = json['html'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['tafsir_id'] = this.tafsirId;
    data['aya_name'] = this.ayaName;
    data['sura_id'] = this.suraId;
    data['aya_number'] = this.ayaNumber;
    data['text'] = this.text;
    data['mufasir'] = this.mufasir;
    data['html'] = this.html;
    return data;
  }
}
