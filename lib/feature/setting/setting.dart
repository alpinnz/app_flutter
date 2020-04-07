import 'package:app_flutter/feature/login/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatelessWidget {
  final String idUser;
  final String username;

  Setting({
    @required this.idUser,
    @required this.username,
  });
  @override
  Widget build(BuildContext context) {
    void logout(BuildContext context) async {
      SharedPreferences pref = await SharedPreferences.getInstance();

      pref.setBool('isLogin', false);

      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => Login()));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Card(
              color: Colors.blueGrey,
              margin: EdgeInsets.only(top: 5, bottom: 5, left: 2.5, right: 2.5),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                onTap: () {},
              ),
            ),
            Card(
              color: Colors.blueGrey,
              margin: EdgeInsets.only(top: 5, bottom: 5, left: 2.5, right: 2.5),
              child: ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                onTap: () {
                  logout(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
