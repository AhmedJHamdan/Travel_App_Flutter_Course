import 'package:flutter/material.dart';

class BackGroundGradient extends StatelessWidget{
  double heigth= 300;
  String text= "Popular";
  var colorr=0xFF4169D2;
  var colorr2=0xFF514DBC;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: heigth,

        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(colorr),
                Color(colorr2),
              ],
              begin: FractionalOffset(0.5,1.5),

            )
        ),

        child: Align(
            alignment: Alignment.topLeft,
            child:Container(
                margin: EdgeInsets.only(
                    top: 50,
                    left: 30
                ),
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                  ),
                )
            ))
    );

  }

  BackGroundGradient(this.heigth, this.text, this.colorr, this.colorr2);


}