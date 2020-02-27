import 'package:flutter/material.dart';
import 'package:flutter_1/Firebase/sign_in_with_google.dart';
import 'user_info.dart';
import '../button_bar.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
      ),
    );

    return Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title
            ],
          ),
          UserInfo(photourl,name,email),
          ButtonsBar()
        ],
      ),
    );
  }

}