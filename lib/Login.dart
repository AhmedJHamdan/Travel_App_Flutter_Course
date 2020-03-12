import "package:flutter/material.dart";
import 'package:flutter_1/Firebase/sign_in_with_google.dart';
import 'package:flutter_1/Place/BackgroundGradient.dart';
import 'package:flutter_1/Place/UI/Homes.dart';
import 'package:flutter_1/Place/button.dart';
import 'package:flutter_1/User/circle_button.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'User/model/Users.dart';
import 'main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_1/User/model/Users.dart';
import 'package:flutter_1/Firebase/cloud_firestore_api.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    var colorr=0xFF4169D2;
    var colorr2=0xFF514DBC;
   return Scaffold(
      body:  Stack(
                children: <Widget>[
                  BackGroundGradient(MediaQuery.of(context).size.height, "Welcome",colorr, colorr2),
                   Column(
                     children: <Widget>[
                       Container(
                         width: width,
margin: EdgeInsets.only(
top: 260,
  right: 20,
  left: 20
),
                            child: Text(
                              "Hi welcome to MyTrips, You can login using Google",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600
                              ),

                            ) ,


                        ),
                       Container(
                         margin: EdgeInsets.only(
                           top:20
                         ),
                         child: SignInButton(
                          Buttons.Google,
                          onPressed: (){

                            signInWithGoogle().whenComplete( () {

                     Users user= new  Users(uid, name,photourl, email);
CloudFirestoreAPI().updateUserData(user);
CloudFirestoreAPI().getData();

                              Navigator.of(context).push(
    MaterialPageRoute(
    builder: (context) {
    return Home();
    }
    ));
    });


                          },
                           text: "     Sign in With Google",

                          ),
                       )
                     ],
                   ),






                ],
              ),
            );
  }
}
