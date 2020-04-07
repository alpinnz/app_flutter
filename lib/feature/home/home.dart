import 'package:app_flutter/core/models/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widget/homeAvatar.dart';
import 'widget/homeDrawer.dart';
import 'widget/homeIconButtom.dart';
import 'widget/homeListView.dart';
import 'widget/homeTitle.dart';

class Home extends StatefulWidget {
  final String idUser;
  final String username;

  Home({
    @required this.idUser,
    @required this.username,
  });

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _users = Provider.of<UserModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: HomeDrawer(),
      body: Center(
        child: _users == null
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
                        colors: [Colors.lightBlue[50], Colors.blue[100]],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        HomeAvatar(),
                        HomeTitle(),
                        HomeIconButtom(),
                        HomeListView(),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
