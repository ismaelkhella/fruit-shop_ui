import 'package:flutter/material.dart';
import 'package:fruit_ui_shop/_routing/routes.dart';
import 'package:fruit_ui_shop/views/cart.dart';

import '../models/fruit.dart';
import '../views/details.dart';
import '../views/home.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => FruitAppHomePage());
    case detailsViewRoute:
      return MaterialPageRoute(
        builder: (context) => FruitAppFruitDetails(fruit: settings.arguments as Fruit),
      );
    case cartViewRoute:
      return MaterialPageRoute(builder: (context) => FruitAppCartView());
      break;
    default:
      return MaterialPageRoute(builder: (context) => FruitAppHomePage());
  }
}
