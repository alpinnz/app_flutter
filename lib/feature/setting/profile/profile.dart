import 'package:app_flutter/feature/setting/profile/widget/profilePicture.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String idUser;
  final String username;

  Profile({
    @required this.idUser,
    @required this.username,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFFE1FCFF),
                Color(0xFF81F2FD),
                Color(0xFF81F2FD),
                Color(0xFF81F2FD),
              ],
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // photo
                  SettingProfilePicure(),
                  const SizedBox(height: 20.0),
                  // Form Text firstName
                  Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo,
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 1.5,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        labelText: 'First Name',
                        // helperText: 'Your full name',
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      maxLines: 1,
                    ),
                  ),
                  // Form LastName
                  Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo,
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 1.5,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        labelText: 'Last Name',
                        // helperText: 'Your full name',
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      maxLines: 1,
                    ),
                  ),
                  // Form Text Email
                  Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo,
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 1.5,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        labelText: 'Email Address',
                        // helperText: 'Your email address',
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      maxLines: 1,
                    ),
                  ),
                  // Form Text Phone
                  Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo,
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 1.5,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                        labelText: 'Phone',
                        // helperText: 'Your phone',
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      maxLines: 1,
                    ),
                  ),
                  // Form Text Bio
                  Container(
                    margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.indigo,
                            width: 1.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 1.5,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              15.0,
                            ),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.note,
                          color: Colors.black,
                        ),
                        labelText: 'Bio',
                        // helperText: 'Your bio',
                        labelStyle: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      maxLines: 5,
                    ),
                  ),
                  // Form Buttom Save
                  Container(
                    height: 60,
                    width: 500,
                    margin: const EdgeInsets.only(top: 2.5, bottom: 2.5),
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      child: Text(
                        'Save',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.blueGrey)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
