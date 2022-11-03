import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:mini_project/model/model.dart';

class SholatAPI {
  final Dio dio = Dio(
    BaseOptions(baseUrl: 'https://api.myquran.com/v1/'),
  );
  SholatAPI() {
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }

  Future<Data> fetchJadwal(String id, String tanggal) async {
    try {
      final Response response = await dio.get(
        'sholat/jadwal/$id/$tanggal',
      );

      Data dataJadwal = Data.fromJson(response.data);
      // List<Data> dataSholat =

      //     (response.data['data'] as List).map((e) => Data.fromJson(e)).toList();

      print('Check detail ${dataJadwal.lokasi}');

      return dataJadwal;
    } catch (e) {
      rethrow;
    }
  }

  // Future<List<Data>> fetchJadwalByTanggal(int id, String tanggal) async {
  //   try {
  //     final Response response = await dio.get(
  //       'sholat/jadwal/$id/$tanggal',
  //     );

  //     List<dynamic> data = response.data;
  //     List<Data> jadwal = data.map((e) => Data.fromJson(e)).toList();

  //     return jadwal;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<List<Lokasi>> fetchKota() async {
    try {
      final Response response = await dio.get(
        'sholat/kota/semua',
      );

      List<dynamic> dataKota = response.data;
      List<Lokasi> semuaKota = dataKota.map((e) => Lokasi.fromJson(e)).toList();

      return semuaKota;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TafsirData>> fetchTafsir() async {
    try {
      final Response response = await dio.get(
        'tafsir/quran/kemenag/id/10',
      );

      List<dynamic> data = response.data;
      List<TafsirData> tafsir =
          data.map((e) => TafsirData.fromJson(e)).toList();

      return tafsir;
    } catch (e) {
      rethrow;
    }
  }
}
