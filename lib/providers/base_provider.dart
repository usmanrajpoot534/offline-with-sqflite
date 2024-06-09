import 'package:flutter/material.dart';

abstract class BaseProvider extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  void setBusy(bool value) {
    _isBusy = value;
    notifyListeners();
  }
}
