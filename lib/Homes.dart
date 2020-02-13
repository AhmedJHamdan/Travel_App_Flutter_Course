import 'package:flutter/material.dart';

import 'BackgroundGradient.dart';
import 'CardList.dart';
import 'DescriptionPlace.dart';
import 'ReviewItem.dart';
import 'button.dart';

class Homes extends StatelessWidget {
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


    ReviewItem(),
    ]
    ),
    )
    ],
    );
  }
}
