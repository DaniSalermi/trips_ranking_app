import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/images/people.jpg";
  String name = "Hector Piñero";
  String userDetail = "1 review - 5 photos";
  String comment = "Esto es un texto de prueba";

  Review(this.pathImage, this.name, this.userDetail, this.comment);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(comment,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              fontWeight: FontWeight.w900,
              color: Color(0xFFa3a5a7))),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(userDetail,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7))),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(name,
          textAlign: TextAlign.left,
          style: TextStyle(fontFamily: "Lato", fontSize: 17.0)),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
