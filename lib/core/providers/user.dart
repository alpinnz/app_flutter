import 'dart:convert';

import 'package:app_flutter/core/models/user.dart';
import 'package:flutter/services.dart';

class UserProvider {
  final String _dataPath = "assets/data/data.json";
  UserModel users;
 
  Future<UserModel> loadUserData( ) async {
    var dataString = await loadAsset();
    Map<String, dynamic> jsonUserData = jsonDecode(dataString);
    users = UserModel.fromJson(jsonUserData['users']);
    print('Data Users -> ' + jsonEncode(users));
    return users;
  }
 
  Future<String> loadAsset() async {
    return await Future.delayed(Duration(seconds: 3), () async {
      return await rootBundle.loadString(_dataPath);
    });
  }
}