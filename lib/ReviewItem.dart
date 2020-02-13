import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return

    Row(
      children: <Widget>[
        Container(
        width: 75,
        height: 75,
            margin: EdgeInsets.only(
              left: 20,
              top: 20,
            ),

        decoration: BoxDecoration(

          shape: BoxShape.circle,

          image: DecorationImage(

            image: AssetImage("assets/Yo.jpg"),
            fit: BoxFit.cover,

          ),

          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)

            )

          ]
          ,


        )
    ),

       Column(
         children: <Widget>[





      ]),
]
    );


  }

}