import 'package:state_provider2/models/getcontacts.dart';
import 'package:flutter/material.dart';

class Contact with ChangeNotifier {
  final List<GetContact> _contacts = [];
  List<GetContact> get contacts => _contacts;

  void add (GetContact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void delete (int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}
