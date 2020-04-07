import 'package:app_flutter/core/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _users = Provider.of<UserModel>(context);

    Widget itemCard(Icon icon, String text) {
      return Card(
        color: Colors.white38,
        child: ListTile(
          contentPadding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          title: Text(
            text,
            textAlign: TextAlign.end,
          ),
          leading: icon,
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.only(top: 15, bottom: 15, left: 5, right: 5),
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        itemCard(
          Icon(Icons.email),
          _users.email,
        ),
        itemCard(
          Icon(Icons.phone),
          _users.phone,
        ),
        itemCard(
          Icon(Icons.note),
          _users.bio,
        ),
      ],
    );
  }
}
