import 'package:flutter/widgets.dart';
import 'package:weekly_project1/model/model.dart';

class GetData with ChangeNotifier {
  final List<Data> _data = [];
  List<Data> get data => _data;

  void addUser(Data data) {
    _data.add(data);
    notifyListeners();
  }
}
