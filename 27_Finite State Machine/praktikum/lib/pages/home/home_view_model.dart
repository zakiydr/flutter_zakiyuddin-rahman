import 'package:finite_state/models/foods.dart';
import 'package:finite_state/service/services.dart';
import 'package:flutter/material.dart';


enum HomeViewState {
  none,
  loading,
  error,
}

class HomeViewModel extends ChangeNotifier {
  HomeViewState _state = HomeViewState.none;
  HomeViewState get state => _state;

  List<Foods> _foods = [];
  List<Foods> get foods => _foods;

  changeState(HomeViewState s) {
    _state = s;
    notifyListeners();
  }

  getFoods() async {
    changeState(HomeViewState.loading);

    try {
      FoodService services = FoodService();
      final response = await services.fetchFood();
      _foods = response!;
      notifyListeners();
      changeState(HomeViewState.none);
    } catch (e) {
      changeState(HomeViewState.error);
    }
  }
}
