import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String Nombre= "Ahmed Hamdan";
  String ImagePath= "assets/Yo.jpg";
  String Details= "1 review 5 photos";
  String Description= "It's So coool, I really love it so much";


  Review(this.Nombre, this.ImagePath, this.Details, this.Description);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build




    final imagen= Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,

      )
      ,
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(ImagePath),
              fit: BoxFit.cover

          )

      ),


    );

    final ReviewTitle= (
        Container(
          margin: EdgeInsets.only(
              top: 0.0,
              left: 10.0
          ),
          child:
          Text(
            Nombre,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            )
            ,
          )
          ,

        )
    );

    final Review_Details= Container(
        margin: EdgeInsets.only(
            top: 2,
            left: 10.0


        ),
        child:
        Text(
          Details,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w300,

          )
          ,
        )

    );
    final Review_Text= Container(
        margin: EdgeInsets.only(
            top: 2.0,
            left: 10.0

        ),
        child:
        Text(
          Description,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w500,

          )
          ,
        )

    );

    final DescriptionItems = (
        Container (

            margin: EdgeInsets.only(
              top: 40.0,

            ),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                ReviewTitle,
                Review_Details,
                Review_Text

              ],
            )
        )
    );


    return Row(
      children: <Widget>[
        imagen,
        DescriptionItems
      ],
    );



  }


}