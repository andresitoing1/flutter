import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "../asset/foto.jpg";
  String name = "Ricardo Castañeda";
  String details = "1 Review 5 photos";
  String comment = "Es un pais magico";

  Review(this.pathImage, this.name, this.comment, this.details);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    final star_border = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}
