import 'package:flutter/material.dart';
import 'package:mini_project/model/model.dart';
import 'package:mini_project/service/api/services.dart';

class GetSholat with ChangeNotifier {
  List<Lokasi> _kota = [];
  List<Lokasi> get kota => _kota;

  List<String> _listKota = [];
  List<String> get listKota => _listKota;

  JadwalSholat? _jadwalSholat;
  JadwalSholat? get jadwalSholat => _jadwalSholat;

  List<TafsirData>? _tafsirData;
  List<TafsirData>? get tafsirData => _tafsirData;

  // List<TafsirData>? _tafsirData2;
  // List<TafsirData>? get tafsirData2 => _tafsirData2;

  getJadwal(String id, String tanggal) async {
    final response = await SholatAPI().fetchJadwal(id, tanggal);
    _jadwalSholat = response;
    debugPrint('Testing ${_jadwalSholat.toString()}');
    notifyListeners();
  }

  getKota() async {
    final response = await SholatAPI().fetchKota();
    _kota = response;
    notifyListeners();
  }

  getListKota() async {
    final response = await SholatAPI().fetchListKota();
    _listKota = response;
    notifyListeners();
  }

  getTafsir(int id) async {
    final response = await SholatAPI().fetchTafsir(id);
    _tafsirData = response;
    notifyListeners();
  }

  // getTafsir2(int id2) async {
  //   final response = await SholatAPI().fetchTafsir2(id2);
  //   _tafsirData2 = response;
  //   notifyListeners();
  // }

  // getJadwalByTanggal(int id, String tanggal) async {
  //   final response = await SholatAPI().fetchJadwalByTanggal(id, tanggal);
  //   _jadwal = response;
  //   notifyListeners();
  // }
}
