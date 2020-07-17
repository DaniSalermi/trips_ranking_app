import 'package:flutter/material.dart';
import 'package:trips_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  final String descriptionText =
      "Choroní es una parroquia venezolana ubicada en una zona costeña en el extremo norte del municipio Girardot, estado Aragua, lo que le añade los elementos naturales peculiares de la faja litoral del parque nacional Henri Pittier. \n\n Sus principales actividades económicas están ligadas a la pesca, la agricultura del cacao y el turismo, que ha tomado mayor importancia durante la última década. \n\n La palabra Choroní proviene del nombre de los indígenas que habitaban el valle ocupado por la parroquia del mismo nombre.";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Choroní", 5, descriptionText),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
