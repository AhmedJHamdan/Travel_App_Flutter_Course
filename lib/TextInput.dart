import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TextInput extends StatelessWidget {
   String hintText;
   TextInputType inputType;
   TextEditingController controller;
  int maxLines=1;


   TextInput({Key key,@required this.hintText,@required this.inputType,@required this.controller, this.maxLines});

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(
        right: 20,
        left: 20,
      ),

      child: TextField(
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFe5e5e5),
          hintText: hintText,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFe5e5e5),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFe5e5e5)),
              borderRadius: BorderRadius.all(Radius.circular(9))

        )
        ),
      ),
    );
  }

}