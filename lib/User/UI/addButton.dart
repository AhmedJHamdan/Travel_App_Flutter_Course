import 'package:flutter/material.dart';
import 'package:flutter_1/TextInput.dart';
import 'package:flutter_1/User/UI/add_place_screen.dart';
class addButton extends StatefulWidget {
  bool mini;
  var icon;
  double iconSize;
  var color;
  var tag;
  addButton(this.mini, this.icon, this.iconSize, this.color, this.tag );

  void onPressedButton() {

  }
  @override
  _addButtonState createState() => _addButtonState();
}

class _addButtonState extends State<addButton> {

void onPressedButton(){
  Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) {
            return AddPlaceScreen();
          }
      ));
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

