import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';



class FloatingAction extends StatefulWidget {
  var tag;

  FloatingAction(this.tag);

  @override
  _FloatingActionState createState() => _FloatingActionState();
}

class _FloatingActionState extends State<FloatingAction> with  AutomaticKeepAliveClientMixin{
  var icon= Icons.favorite_border;
  void OnPressedFav(){

    setState(() {
      if (icon== Icons.favorite_border){
      icon= Icons.favorite;
      Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Added to favorites"),
          )
      );
    }else{
      icon= Icons.favorite_border;
      }
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0XFF11DA53),
      mini: true,
      tooltip: "fav",
      onPressed: OnPressedFav,
      heroTag: widget.tag,
      child: Icon(
icon
      ),
    );
  }
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
