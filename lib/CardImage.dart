import 'package:flutter/material.dart';

class CardImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment(0.8,0.95),
      children: <Widget>[
        cardImage,
        favourite_Icon
      ],
    );

  }
}

final cardImage=(
            Container(
                width: 250,
                height: 350,
                margin: EdgeInsets.only(
                    right: 5,
                    left: 10,
                    bottom: 20
                )
                ,
                decoration: BoxDecoration(

                  shape: BoxShape.rectangle,
                  image: DecorationImage(

                    image: AssetImage("assets/mountain.jpeg"),
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

          borderRadius: BorderRadius.all(Radius.circular(20)),

        )
    ));


final favourite_Icon=(
Container (

  width: 40,
  height: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.greenAccent
    ),

    child:
Icon(
  Icons.favorite,
  color: Colors.white,

)
)
);
