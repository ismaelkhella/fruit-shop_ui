import 'package:flutter/material.dart';

class Images {
  static const appleImage =
      AssetImage('assets/images/apple.png');
  static const avocadoImage =
      AssetImage('assets/images/avocado.png');
  static const grapeImage =
      AssetImage('assets/images/grape.png');
  static const lemonImage =
      AssetImage('assets/images/lemon.png');
  static const orangeImage =
      AssetImage('assets/images/orange.png');
}

class ImageAssetPath {
  static const appleImage = 'assets/images/apple.png';
  static const avocadoImage ='assets/images/avocado.png';
  static const grapeImage = 'assets/images/grape.png';
  static const lemonImage = 'assets/images/lemon.png';
  static const orangeImage = 'assets/images/orange.png';
}

class Fonts {
  static const primaryFont = "Quicksand";
}

class Texts {
  static const header = Text(
    "All Fruits",
    style: TextStyle(
        fontFamily: Fonts.primaryFont,
        fontSize: 25.0,
        fontWeight: FontWeight.bold),
  );

  static const subHeader = Text(
    "Sales",
    style: TextStyle(
      fontSize: 20.0,
      fontFamily: Fonts.primaryFont,
      fontWeight: FontWeight.bold,
    ),
  );
}

class TabText {
  static const tabText1 = Text(
    "Avocado",
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontWeight: FontWeight.bold,
      fontSize: 17.0,
    ),
  );

  static const tabText2 = Text(
    "Grapes",
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontWeight: FontWeight.bold,
      fontSize: 17.0,
    ),
  );

  static const tabText3 = Text(
    "Apple",
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontWeight: FontWeight.bold,
      fontSize: 17.0,
    ),
  );

  static const tabText4 = Text(
    "Grapefruit",
    style: TextStyle(
      fontFamily: Fonts.primaryFont,
      fontWeight: FontWeight.bold,
      fontSize: 17.0,
    ),
  );
}