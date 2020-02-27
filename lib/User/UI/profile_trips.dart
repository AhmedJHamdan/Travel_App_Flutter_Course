import 'package:flutter/material.dart';
import 'package:flutter_1/User/UI/profile_background.dart';
import 'package:flutter_1/User/UI/profile_header.dart';
import 'package:flutter_1/User/UI/profile_place_list.dart';

import '../../Place/Place.dart';
import 'ProfilePlace.dart';

class ProfileTrips extends StatelessWidget {
  static Place place = new Place('Knuckles Mountains Range', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '123,123,123');
  static Place place2 = new Place('Mountains', 'Hiking. Water fall hunting. Natural bath', 'Scenery & Photography', '321,321,321');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return Container(
      color: Colors.indigo,
    );*/
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ProfileHeader(),
        ProfilePlacesList()

      ],
    );


  }
  final searchResults = Container
    (
    margin: EdgeInsets.only(
        top: 200,
        left: 20.0,
        right: 20.0,
        bottom: 10.0
    ),
    child: ListView(

      children: <Widget>[
        ProfilePlace('assets/images/river.jpeg', place),
        ProfilePlace('assets/images/mountain.jpeg', place2),

      ],

    ),
  );
}