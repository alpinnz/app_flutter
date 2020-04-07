import 'dart:convert';

import 'package:app_flutter/core/models/login.dart';
import 'package:flutter/services.dart';

class LoginProvider {
  final String _dataPath = "assets/data/data.json";
  LoginModel login;

  Future<LoginModel> loadUserData() async {
    var dataString = await loadAsset();
    Map<String, dynamic> jsonUserData = jsonDecode(dataString);
    login = LoginModel.fromJson(jsonUserData['login']);
    print('Data Login -> ' + jsonEncode(login));
    return login;
  }

  Future<String> loadAsset() async {
    return await Future.delayed(Duration(seconds: 2), () async {
      return await rootBundle.loadString(_dataPath);
    });
  }
}
