import 'package:flutter/material.dart';
import 'package:mini_project/model/model.dart';
import 'package:mini_project/service/api/services.dart';

class GetSholat with ChangeNotifier {
  List<Lokasi> _kota = [];
  List<Lokasi> get kota => _kota;

  Data? _jadwalSholat;
  Data? get jadwalSholat => _jadwalSholat;

  List<TafsirData> _tafsirData = [];
  List<TafsirData> get tafsirData => _tafsirData;

  // List<Data> _jadwal = [];
  // List<Data> get jadwal => _jadwal;

  getJadwal(String id, String tanggal) async {
    final response = await SholatAPI().fetchJadwal(id, tanggal);
    _jadwalSholat = response;
    notifyListeners();
  }

  getKota() async {
    final response = await SholatAPI().fetchKota();
    _kota = response;
    notifyListeners();
  }

  getTafsir() async {
    final response = await SholatAPI().fetchTafsir();
    _tafsirData = response;
    notifyListeners();
  }

  // getJadwalByTanggal(int id, String tanggal) async {
  //   final response = await SholatAPI().fetchJadwalByTanggal(id, tanggal);
  //   _jadwal = response;
  //   notifyListeners();
  // }
}
