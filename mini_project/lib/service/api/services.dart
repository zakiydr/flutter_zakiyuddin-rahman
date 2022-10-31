import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:mini_project/model/model.dart';

class SholatAPI {
  final Dio dio = Dio();

  Future fetchJadwal() async {
    try {
      final Response response = await dio.get(
        'https://api.myquran.com/v1/sholat/jadwal/1301/2022/10/31',
      );

      debugPrint(response.data.toString());

      List<Data> dataSholat =
          (response.data['data'] as List).map((e) => Data.fromJson(e)).toList();

      return dataSholat;
    } catch (e) {
      rethrow;
    }
  }
}
