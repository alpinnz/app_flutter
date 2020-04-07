import 'package:app_flutter/core/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _users = Provider.of<UserModel>(context);
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    _users.firstName + ' ' + _users.lastName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.black),
                  ),
                ),
                Text(
                  _users.job,
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );
  }
}
