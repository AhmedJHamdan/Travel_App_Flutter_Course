import 'package:flutter/material.dart';

class DescriptionPlance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 20
              ),
  child: Text(
    "Duwili Ella",
    style: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,

    ),

  ),

            ),
            Row(
              children: <Widget>[
                Container(margin: EdgeInsets.only(left:20), child: Icon(Icons.star,color: Colors.yellow,),),
                Container(margin: EdgeInsets.only(), child: Icon(Icons.star,color: Colors.yellow,),),
                Container(margin: EdgeInsets.only(), child: Icon(Icons.star,color: Colors.yellow,),),
                Container(margin: EdgeInsets.only(), child: Icon(Icons.star,color: Colors.yellow,),),
                Container(margin: EdgeInsets.only(), child: Icon(Icons.star_border, color: Colors.black12,),),
              ],
            )

          ],

        ),
        Container(
            margin: EdgeInsets.only(
              top: 5,
              left: 20,
              right: 20
            ),
            child:

        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
            " Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        style: TextStyle(
          fontSize: 12
        ),
        ))
      ],

    );
  }
}
