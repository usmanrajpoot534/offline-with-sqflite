import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:offline_with_sqflite/models/user_data.dart';
import 'package:offline_with_sqflite/providers/base_provider.dart';

class HomeProvider extends BaseProvider {
  List<User> users = [];

  HomeProvider() {
    _getUsers();
  }

  Future<void> _getUsers() async {
    /// loading started
    setBusy(true);

    final json = await rootBundle.loadString('assets/user_data.json');
    final userData = UserData.fromJson(jsonDecode(json));
    users = userData.users;

    /// loading stopped
    setBusy(false);
  }
}
