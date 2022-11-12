import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("../asset/foto.jpg", "Andres Castañeda", "1 review 4 photos",
            "divertido"),
        Review("..asset/familia.jpg", "Familia", "2 review 2 photos",
            "Especial!!!"),
        Review(
            "../asset//princesa.jpg", "Praga", "2 review 2 photos", "Magico¡¡")
      ],
    );
  }
}
