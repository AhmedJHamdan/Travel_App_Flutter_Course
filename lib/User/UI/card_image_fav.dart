import 'dart:io';

import 'package:flutter/material.dart';


class  CardImageWithFabIcon extends StatelessWidget {
  final File pathImage;
  final double height;
  final double width;
  double left;
  final VoidCallback onPressedFabIcon;
  final IconData iconData;


  CardImageWithFabIcon({
    Key key,
    @required this.pathImage,
    @required this.width,
    @required this.height,
    @required this.onPressedFabIcon,
    @required this.iconData,
    this.left
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(
          left: left

      ),

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: pathImage != null ? FileImage( pathImage ) : AssetImage('assets/Yo.jpeg')
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow (
                color:  Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]

      ),
    );

    return Stack(
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,
      ],
    );
  }

}