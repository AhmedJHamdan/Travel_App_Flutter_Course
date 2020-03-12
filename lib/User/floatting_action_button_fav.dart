import 'package:flutter/material.dart';

class floatting_action_button_fav extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _floatting_action_button_fav();
  }
}


class _floatting_action_button_fav extends State <floatting_action_button_fav> with AutomaticKeepAliveClientMixin{
  IconData favIco;
  bool pressed= false;

  void initState(){
    super.initState();
    this.favIco= Icons.favorite_border;
  }
  void OnPresedFav() {
    setState(() {
      if (this.favIco==Icons.favorite_border){
        this.favIco= Icons.favorite;
      } else {
        this.favIco= Icons.favorite_border;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton (
      backgroundColor: Color(0xFF16DB58),
      mini: true,
      tooltip: "Fav",
      heroTag: "loosrerere454",
      child: Icon(

        favIco,
        color: Colors.white,
      ),
      onPressed: OnPresedFav ,

    )
    ;
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;




}
