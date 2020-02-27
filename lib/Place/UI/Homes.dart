import 'package:flutter/material.dart';
import 'package:flutter_1/Place/UI/review.dart';

import '../BackgroundGradient.dart';
import 'CardList.dart';
import '../button.dart';
import 'DescriptionPlace.dart';

class Homes extends StatelessWidget {
  String Nombre= "Ahmed Hamdan";
  String ImagePath= "assets/Yo.jpg";
  String Details= "1 review 5 photos";
  String Description= "It's So coool, I really love it so much";

  var color1= 0xFF4169D2;
  var color2=0xFF514DBC;
  @override
  Widget build(BuildContext context) {
    return
    Column(
    children: <Widget>[

    Stack(
    children: <Widget>[
    BackGroundGradient(300,"Popular",color1, color2),
    Cardlist()

    ],
    ),

    Container(
    height: 300,
    child:
    ListView(
    children: <Widget>[
    DescriptionPlance(),

    button(),
    Container(
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.only(
    left: 20,
    top: 30,
    ),
    child:
    Text("All Reviews",
    style: TextStyle(
    color: Colors.grey
    ),

    ),

    ),


    Review(Nombre,ImagePath,Details, Description),
    Review(Nombre,ImagePath,Details, Description),
    Review(Nombre,ImagePath,Details, Description),
    ]
    ),
    )
    ],
    );
  }
}
