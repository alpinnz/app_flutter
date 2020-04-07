import 'package:app_flutter/core/routes/routes.dart';
import 'package:flutter/material.dart';

import 'homeAvatar.dart';

class HomeDrawer extends StatefulWidget {
  HomeDrawer({Key key}) : super(key: key);

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.

      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HomeAvatar(),
                  ListTile(
                    title: Text(
                      'Alfin NoviAji',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'alpinnz@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        Routes.navigate(
                            context, 'profile', 'userAlpinnz', 'Alfin');
                      });
                    },
                  ),
                ]),
          ),
          ListView(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 2.5,bottom: 2.5,left: 5,right: 5),
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_left),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    Routes.navigate(context, 'profile', 'userAlpinnz', 'Alfin');
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Setting',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                trailing: Icon(Icons.arrow_left),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    Routes.navigate(context, 'setting', 'userAlpinnz', 'Alfin');
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
