import 'package:app_flutter/core/models/login.dart';
import 'package:app_flutter/feature/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'widget/loginForm.dart';

_LoginState loginState;

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() {
    loginState = _LoginState();
    return loginState;
  }
}

class _LoginState extends State<Login> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  Future isLogin() async {
    bool login = false;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('isLogin') != null) {
      login = prefs.getBool('isLogin');
    }
    
    if (login) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => Home(
                    idUser: null,
                    username: null,
                  )));
    }
  }

  @override
  void initState()  {
    super.initState();

    isLogin();
  }

  @override
  Widget build(BuildContext context) {
    var _login = Provider.of<LoginModel>(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: Icon(Icons.person)
        ,
        title: const Text(
          'Login',
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: _login == null
            ? Container(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.blueAccent,
                ),
              )
            : Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.blue, Colors.red],
                      ),
                    ),
                  ),
                  LoginForm(),
                ],
              ),
      ),
    );
  }
}
