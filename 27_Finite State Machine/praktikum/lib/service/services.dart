import 'package:dio/dio.dart';
import 'package:finite_state/models/foods.dart';
import 'package:flutter/material.dart';

class FoodService {
  final Dio dio = Dio();

  Future<List<Foods>?> fetchFood() async {
    try {
      final Response response = await dio.get(
          'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods');

      debugPrint(response.data.toString());

      List<Foods> foods =
          (response.data as List).map((e) => Foods.fromJson(e)).toList();

      return foods;
    } catch (e) {
      rethrow;
    }
  }
}
