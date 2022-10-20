import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../pages/home_page.dart';

class UserProvider extends ChangeNotifier {
  late SharedPreferences registerdata;
  bool _newUser = false;
  bool _toggle = true;
  String _name = '';
  String _email = '';

  bool get toggle => _toggle;
  bool get newUser => _newUser;
  String get name => _name;
  String get email => _email;

  Future<void> checkRegister(BuildContext context) async {
    registerdata = await SharedPreferences.getInstance();
    _newUser = registerdata.getBool('register') ?? true;
    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
          (route) => false);
    }
    notifyListeners();
  }

  Future<void> isLogin(bool status) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setBool('register', status);
    notifyListeners();
  }

  Future<void> setName(String name) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setString('name', name);
    notifyListeners();
  }

  Future<void> setEmail(String email) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.setString('email', email);
    notifyListeners();
  }

  Future<void> initial() async {
    registerdata = await SharedPreferences.getInstance();
    _name = registerdata.getString('name').toString();
    _email = registerdata.getString('email').toString();
    notifyListeners();
  }

  Future<void> deleteName(String name) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.remove('name');
    notifyListeners();
  }

  Future<void> deleteEmail(String email) async {
    registerdata = await SharedPreferences.getInstance();
    registerdata.remove('email');
    notifyListeners();
  }

  toggleTheme() {
    _toggle = !_toggle;
    notifyListeners();
  }
}
