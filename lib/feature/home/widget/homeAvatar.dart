import 'package:app_flutter/core/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _users = Provider.of<UserModel>(context);
    Color color = Theme.of(context).primaryColor;
    return Container(
      margin: EdgeInsets.all(15),
      child: CircleAvatar(
        radius: 100,
        backgroundColor: color,
        child: ClipOval(
          child: SizedBox(
            width: 185.0,
            height: 185.0,
            child: Image.asset(
              'assets/images/' + _users.avatar,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
