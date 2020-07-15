import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listOfReviews = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/people.jpg", "Catalina Rodríguez",
            "1 review - 4 photos", "Magnifico lugar"),
        Review("assets/images/people2.jpg", "Anahí Salgado",
            "2 review - 5 photos", "Probando textos"),
        Review("assets/images/people3.jpg", "Hector Piñero",
            "1 review - 3 photos", "Me encantó la estadía"),
      ],
    );
    return listOfReviews;
  }
}
