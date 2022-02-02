import 'package:flutter/material.dart';

class Conts {
  Conts();

  double tailleText(BuildContext context) {
    double taille = 0;
    double t = MediaQuery.of(context).size.width;

    if (t <= 500) {
      taille = 20;
    } else if (t >= 500 && t <= 850) {
      taille = 30;
    } else {
      taille = 40;
    }

    return taille;
  }
}
