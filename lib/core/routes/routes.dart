import 'package:app_flutter/feature/home/home.dart';
import 'package:app_flutter/feature/login/login.dart';
import 'package:app_flutter/feature/setting/profile/profile.dart';
import 'package:app_flutter/feature/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Routes {
  static final sailor = Sailor();

  static Future<bool> isLogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('isLogin')) {
      return true;
    }
    return false;
  }

  static void createRoutes() {

    
    sailor.addRoutes([
      SailorRoute(
        name: '/',
        builder: (context, args, params) {
          return Login();
        },
      ),
      SailorRoute(
        name: '/home',
        builder: (context, args, params) {
          return Home(
            idUser: params.param('idUser'),
            username: params.param('username'),
          );
        },
        params: [
          SailorParam(name: 'idUser', isRequired: true),
          SailorParam(name: 'username', isRequired: true),
        ],
      ),
      SailorRoute(
        name: '/setting',
        builder: (context, args, params) {
          return Setting(
            idUser: params.param('idUser'),
            username: params.param('username'),
          );
        },
        params: [
          SailorParam(name: 'idUser', isRequired: true),
          SailorParam(name: 'username', isRequired: true),
        ],
      ),
      SailorRoute(
        name: '/profile',
        builder: (context, args, params) {
          return Profile(
            idUser: params.param('idUser'),
            username: params.param('username'),
          );
        },
        params: [
          SailorParam(name: 'idUser', isRequired: true),
          SailorParam(name: 'username', isRequired: true),
        ],
      ),
    ]);
  }

  static void navigate(
      BuildContext context, String url, String idUser, String username) {
    Routes.sailor.navigate(
      '/' + url,
      params: {
        'idUser': idUser,
        'username': username,
      },
    );
  }
}
