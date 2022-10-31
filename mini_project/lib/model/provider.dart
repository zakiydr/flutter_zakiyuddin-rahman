import 'package:flutter/material.dart';
import 'package:mini_project/model/model.dart';
import 'package:mini_project/service/api/services.dart';

class GetSholat with ChangeNotifier {
  List<JadwalSholat> _jadwal = [];
  List<JadwalSholat> get jadwal => _jadwal;
  String _result = '';
  String get result => _result;

  getJadwal() async {
    final response = await SholatAPI().fetchJadwal();
    _result = response;
    notifyListeners();
  }

  // getJadwal() async {
  //   final response = await SholatAPI().fetchData();
  //   _user = response;
  //   notifyListeners();
  // }
}
