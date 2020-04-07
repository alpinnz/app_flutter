import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SettingProfilePicure extends StatefulWidget {
  const SettingProfilePicure({Key key}) : super(key: key);

  @override
  _SettingProfilePicureState createState() => _SettingProfilePicureState();
}

class _SettingProfilePicureState extends State<SettingProfilePicure> {
  File _imageFile;

  @override
  Widget build(BuildContext context) {
    _openGallary(BuildContext context) async {
      var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
      this.setState(() {
        _imageFile = picture;
      });
      Navigator.of(context).pop();
    }

    _openCamera(BuildContext context) async {
      var picture = await ImagePicker.pickImage(source: ImageSource.camera);
      this.setState(() {
        _imageFile = picture;
      });
      Navigator.of(context).pop();
    }

    Widget _decideImageView(BuildContext context) {
      if (_imageFile == null) {
        return Image.asset('assets/images/profile.jpg');
      }else{
        return Image.file(_imageFile,width: 400,height: 400,);
      }
    }

    Future<void> _showChoiceDialog(BuildContext context) {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                      child: Text('Galery'),
                      onTap: () {
                        _openGallary(context);
                      },
                    ),
                    Padding(padding: const EdgeInsets.all(18)),
                    GestureDetector(
                      child: Text('Camera'),
                      onTap: () {
                        _openCamera(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          });
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 7.5, bottom: 20.0),
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.indigo, width: 3.0),
              borderRadius: BorderRadius.all(
                Radius.circular(100.0),
              ),
            ),
            child: CircleAvatar(
              child: ClipOval(
                child: _decideImageView(context),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 100.0,
          ),
          child: IconButton(
            icon: Icon(
              Icons.camera_alt,
              size: 40,
              color: Colors.black,
            ),
            onPressed: () {
              _showChoiceDialog(context);
            },
          ),
        )
      ],
    );
  }
}
