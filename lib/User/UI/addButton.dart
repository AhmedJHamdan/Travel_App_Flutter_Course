import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_1/TextInput.dart';
import 'package:flutter_1/User/UI/add_place_screen.dart';
import 'package:image_picker/image_picker.dart';

class addButton extends StatefulWidget {
  bool mini;
  var icon;
  double iconSize;
  var color;
  var tag;
  addButton(this.mini, this.icon, this.iconSize, this.color, this.tag );

  @override
  _addButtonState createState() => _addButtonState();
}

class _addButtonState extends State<addButton> {

void onPressedButton() async{
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera).then((File image) {
      Navigator.of(context).push(
          MaterialPageRoute(
              builder: (BuildContext context) => AddPlaceScreen(image: image,)
          )).catchError((onError) {
        print(onError);
      });
    });}
   getImage();
}

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FloatingActionButton(
          backgroundColor: widget.color,
          mini: widget.mini,
          onPressed: onPressedButton,
          heroTag: widget.tag,
          child: Icon(
            widget.icon,
            size: widget.iconSize,
            color: Color(0xFF4268D3),
          ),
        )
    );
  }
}

