import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_1/Place/UI/CardImage.dart';
import 'package:flutter_1/Place/UI/Homes.dart';
import 'package:flutter_1/User/UI/add_place_screen.dart';
import 'package:flutter_1/User/UI/profile_trips.dart';
import 'package:flutter_1/test.dart';

import 'Login.dart';
import 'Place/button.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:Login() ,
    );
  }
}


class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    // TODO: implement build
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
        items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.indigo),
    title: Text("Home")
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.search, color: Colors.indigo),
    title: Text("Search")
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person, color: Colors.indigo),
    title: Text("Profile")
    ),
    ]
    ),

    tabBuilder: (BuildContext context, int index) {
      switch (index) {
        case 0:
          return CupertinoTabView(
            builder: (BuildContext context) => Homes(),
          );
          break;
        case 1:
          return CupertinoTabView(
            builder: (BuildContext context) => AddPlaceScreen(),
          );
          break;
        case 2:
          return CupertinoTabView(
            builder: (BuildContext context) => ProfileTrips(),
          );
          break;
      }
    }),
      );



  }

}




  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".




