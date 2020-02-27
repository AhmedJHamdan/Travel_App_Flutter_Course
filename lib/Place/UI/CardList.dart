import 'package:flutter/material.dart';
import 'package:flutter_1/Place/UI/CardImage.dart';

class Cardlist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 250,

        margin: EdgeInsets.only(
          top: 130
        ),
        child:
        ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[

        CardImage("dsds"),
        CardImage("sdsd3d"),
        CardImage("sdsaa"),
        CardImage("sdsssssss"),
        CardImage("sds"),
        CardImage("dji"),


      ],
        ));
  }

}