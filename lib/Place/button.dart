import 'package:flutter/material.dart';

class button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
        child:
        Container(

      margin: EdgeInsets.only(

        top:20,
        left: 20
      ),
      width: 175,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),

            gradient: LinearGradient(
              colors: [
                Color(0xFF4169D2),
                Color(0xFF514DBC),
              ],
              begin: FractionalOffset(0.5,1.5),

            )
        ),

        child:
            Align(
              alignment: Alignment.center,
        child:
            Container(

                child:
                  Text(

                  "Navigate",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                )
            )
    )));

  }
}
