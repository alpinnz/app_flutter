import 'package:app_flutter/core/models/login.dart';
import 'package:app_flutter/feature/login/login.dart';
import 'package:app_flutter/feature/login/widget/loginValidate.dart';
import 'package:app_flutter/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<ScaffoldState> scaffoldKey = loginState.scaffoldKey;
  final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  String username = '';
  String password = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _login = Provider.of<LoginModel>(context);
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _picture(context),
              _email(context),
              _password(context),
              _buttomLogin(context, _login),
            ],
          ),
        ),
      ),
    );
  }

  void submit(BuildContext context, var _login) async {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      print(username);
      if (usernameController.value.text == _login.username) {
        if (passwordController.value.text == _login.password) {
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setBool('isLogin', true);

          SnackBar snackBar = SnackBar(
            content: Text('Login Sukses'),
            backgroundColor: Colors.green,
          );
          scaffoldKey.currentState.showSnackBar(snackBar);

          Routes.navigate(context, 'home', 'id', _login.username);
        } else {
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setBool('isLogin', false);

          SnackBar snackBar = SnackBar(
            content: Text('Invalid Password !!'),
            backgroundColor: Colors.red,
          );
          scaffoldKey.currentState.showSnackBar(snackBar);
        }
      } else {
        SnackBar snackBar = SnackBar(
          content: Text('Invalid Username !!'),
          backgroundColor: Colors.red,
        );
        scaffoldKey.currentState.showSnackBar(snackBar);
      }
    }
  }

  Widget _picture(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2.5, bottom: 2.5),
      padding: const EdgeInsets.all(5),
      child: Icon(
        Icons.person,
        size: 200,
        color: Colors.grey,
      ),
    );
  }

  Widget _email(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2.5, bottom: 2.5),
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: usernameController,
        validator: LoginValidate.validateEmail,
        key: Key('username'),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: 'username',
          labelText: 'username',
        ),
      ),
    );
  }

  Widget _password(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 2.5, bottom: 2.5),
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: passwordController,
        validator: LoginValidate.validatePass,
        key: Key('password'),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: 'password',
          labelText: 'password',
        ),
        obscureText: true,
      ),
    );
  }

  Widget _buttomLogin(BuildContext context, var _login) {
    return Container(
      height: 60,
      width: 500,
      margin: const EdgeInsets.only(top: 2.5, bottom: 2.5),
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text(
          'login',
          style: TextStyle(fontSize: 18.0),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.blueGrey)),
        onPressed: () => submit(context, _login),
      ),
    );
  }
}
