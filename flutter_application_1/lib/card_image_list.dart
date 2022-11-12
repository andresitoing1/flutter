import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("../asset/nevado.jpg"),
          CardImage("../asset/catedral.jpg"),
          CardImage("../asset/choza.jpg"),
          CardImage("../asset/flores.jpg"),
          CardImage("../asset/penol.jpg"),
          CardImage("../asset/playa.jpg")
        ],
      ),
    );
  }
}
